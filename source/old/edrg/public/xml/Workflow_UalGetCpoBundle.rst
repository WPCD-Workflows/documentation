.. _edrg_Workflow_UalGetCpoBundle:

UalGetCpoBundle Workflow
========================

Contact: Thomas Johnson, tjohn@kth.se.

Modelling real plasmas requires input from both the relevant
experimental database and information about the machine hardware and
settings. The purpose of the UalGetCpoBundle is to provide a workflow
that reads both input CPOs related to the plasma state and the once that
are related to the hardware. The workflow then bundles these CPOs into
the CPOS-branch of the `EU-ITM
bundle <#itm_conventions_plasma_bundle>`__. The target applications of
this workflow is as an initialisation actor in workflows like the HCD
workflow and the ETS.

The actor is still under development and need to be tested. So far only
the wall, the nbi and the antennas CPOs are read from the machine
description database, but more CPOs will be added (e.g. pfsystems and
ironmodel). Note that the UalGetCpoBundle does not fill in the discharge
related hardware settings. These have to be set externally with actors
like the addECant, addICant and nbifiller.

.. _edrg_Workflow_UalGetCpoBundle_input:

Input to UalGetCpoBundle Actors
-------------------------------

The UalGetCpoBundle actor has a number of input ports, through which all
input to the actor are passed. The list of input ports reads:

+---------------------+----+-------------------------------------------+
| Port name           | Da | Description                               |
|                     | ta |                                           |
|                     | ty |                                           |
|                     | pe |                                           |
+=====================+====+===========================================+
| UserName            | St | Name of the user whos UAL database we     |
|                     | ri | shall read from                           |
|                     | ng |                                           |
+---------------------+----+-------------------------------------------+
| MachineName         | St | Name of the machine (tokamak) used when   |
|                     | ri | accessing the UAL database                |
|                     | ng |                                           |
+---------------------+----+-------------------------------------------+
| ShotNumber          | In | Shot number to be used when reading from  |
|                     | te | the UAL database                          |
|                     | ge |                                           |
|                     | r  |                                           |
+---------------------+----+-------------------------------------------+
| InputRunNumber      | In | Run number to be used when reading the    |
|                     | te | main CPOs from the UAL database           |
|                     | ge |                                           |
|                     | r  |                                           |
+---------------------+----+-------------------------------------------+
| TemporaryRunNumber_ | In | Run number used when the UALInit          |
| MainCpos            | te | temporarily store the main CPOs during a  |
|                     | ge | run. Also referred to as runwork.         |
|                     | r  |                                           |
+---------------------+----+-------------------------------------------+
| TemporaryRunNumber_ | In | Run number used when the UALInit          |
| MachineDescriptions | te | temporarily store the Machine Description |
|                     | ge | CPOs during a run. Also referred to as    |
|                     | r  | runwork.                                  |
+---------------------+----+-------------------------------------------+
| SelectMachineDescri | Bu | Bundle of three boolean fields:           |
| ptionCpos           | nd | {use_MD_wall=True/False,                  |
|                     | le | use_MD_nbi=True/False,                    |
|                     |    | use_MD_antennas=True/False} The three     |
|                     |    | field are used to select if the wall, the |
|                     |    | nbi and the antennas CPOs should be taken |
|                     |    | from the Machine Description Database or  |
|                     |    | from the shot=ShotNumber and              |
|                     |    | run=InputRunNumber.                       |
+---------------------+----+-------------------------------------------+

.. _edrg_Workflow_UalGetCpoBundle_input:

Design of the UalGetCpoBundle-Workflow
--------------------------------------

The UalGetCpoBundle-Workflow has been developed purely for the testing
and development of the UalGetCpoBundle actor. This workflow (1) provides
an interface for prescribing the input to be used by the UalGetCpoBundle
actor and (2) it prints the output from the same actor.

To fill the input data double click on the composite actor at the
top-level of the workflow. A box will then pop up where you can fill in
each of the input parameters described above, as illustrated in figure
1. These parameters are then fed into the actor as illustrated in figure
2.

Figure 1. The top level of the UalGetCpoBundle-Workflow provides an
interface for describing the input to the UalGetCpoBundle actor.

Figure 2. Calling the UalGetCpoBundle actor in the
UalGetCpoBundle-Workflow.

.. _edrg_Workflow_UalGetCpoBundle_input:

Design of the UalGetCpoBundle Actor
-----------------------------------

The UalGetCpoBundle actor, outlined in the figure 3 below, consists of
four composite actors and some logic to connect these.

-  The first of these actors is
   Validate_Input
   (see figure 4), which checks the three input run numbers to make sure
   they are all different.
-  The second actor reads all the main CPOs from the input run number
   InputRunNumber
   and is called
   UAL_read_main_CPOs
   (see figure 5).

After the third actor there is a switch to determine which Machine
Description data is requested and if we need any of the machine
description CPO. If we do not, the output from UAL_read_main_CPOs will
be sent to the output of the UalGetCpoBundle actor, othervise the third
actor UAL_read_machine_description_CPOs is called.

-  This third actor (see figure 6 and 7) first idenfities the relevant
   triplet of
   UserId/Shot/Run
   to be used when reading data from the machine description database.
   This proceedure uses an xml-document from the
   md_and_dm
   -repository that related e.g. JET shot 77922 with a certain set
   UserId/Shot/Run
   . Once this triplet is know the UALInit is called and its output is
   finally bundled.
-  The forth and final composite actor is
   Insert_Machine_Descriptions_to_CPO_bundle
   , which merges the Machine Description CPOs according to the
   specifications in the input port
   SelectMachineDescriptionCpos
   .

Figure 3. Outline of the UalGetCpoBundle actor.

Figure 4. The Validate_Input composite actor, part of UalGetCpoBundle.

Figure 5. The UAL_read_main_CPOs composite actor, part of
UalGetCpoBundle.

Figure 6. The UAL_read_machine_description_CPOs composite actor, part of
UalGetCpoBundle.

Figure 7. The Get_User_and_Shot_from_Database composite actor, part of
UalGetCpoBundle/UAL_read_machine_description_CPOs.
