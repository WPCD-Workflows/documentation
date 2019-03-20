The EQRECONSTRUCT workflow
--------------------------

<br />

1. Workflow rationale
---------------------

The EQRECONSTRUCT workflow is a Kepler workflow aimed at performing the
reconstruction of the plasma equilibrium from diagnostic data. The
workflow can perform both a single time reconstruction and over a
defined time range with a user defined sampling rate. The workflow
design facilitates the integration of a variety of plasma reconstruction
equilibrium codes, all using the same input data from a user defined
IMAS database. In addition, during all workflow stages (including
initialization and finalization), the experimental and modeling data are
cast under the same conceptual data bundling as used by the ETS,
`HCD <https://portal.eufus.eu//documentation/ITM/html/imp5_workflow__imp5hcd.html>`__
and `EQSTABIL <KeplerWorkflow_EQSTABIL>`__ workflow. This deliberate
choice greatly facilitates the interfacing to any of such workflows. In
fact, elements of the EQSTABIL workflow can and were seamlessly
integrated in the workflow namely the stage for high resolution
equilibrium actors for axisymmetric toroidal static plasmas with
isotropic pressure.

The workflow includes built-in visualization plugin options to visualize
the equilibrium reconstruction (and high resolution calculation) during
the run execution. This allow for an immediate inspection of the
results. Some fundamental data verification is performed on the input
and processed data to ensure a “safe landing” of the workflow in case
any problems are identified.

The workflow is presently targeting primarily straightforward magnetics
only plasma reconstruction calculations in any plasma scenario.
Interferometry, polarimetry and Motional Stark Effect assisted
reconstructions are also possible since no workflow changes are
necessary. Future versions of the workflow will incorporate kinetic data
(thermal/fast pressure).

The workflow is not meant for running use cases that require strong user
intervention during the run execution e.g. setting different code
parameters at different time steps (though possible by pausing the
workflow, changing the code parameters and resuming) for deselecting
given diagnostic channels or changing regularization coefficients.

2. Workflow organization & design
---------------------------------

The top level layout of the workflow is shown below.

<img width="800" alt="EQRECONSTRUCT_JET_timeloop_records.png"
src="https://portal.eufus.eu/twiki/pub/Main/KeplerWorkflow_EQRECONSTRUCT/EQRECONSTRUCT_JET_timeloop_records.png"
/>

As shown in the workflow layout, the workflow execution typically
follows the following steps (further detailed below):

-  START (set up input imasdb database and simulation time range)
-  CHECK_DATA (verify data consistency)
-  Check TIME (continue simulation if time < time_end)
-  Reconstruct (calculate reconstructued equilibrium and high resolution
   equilibrium)
-  SAVE SLICE (save time slice on database)
-  ADVANCE TIME (advance time to next time step)
-  STOP THE RUN (end the simulation and stop)

**I - START**
~~~~~~~~~~~~~

Composite actor used to initialize the workflow. It reads experimental
data from an ITM database and assembles the plasma bundle. The database
details e.g. \_user, device, shot, run\ *in* are configurable in the
actor when double clicking on the actor (see Figure below).

<img width="650" alt="EQRECONSTRUCT_START_settings.png"
src="https://portal.eufus.eu/twiki/pub/Main/KeplerWorkflow_EQRECONSTRUCT/EQRECONSTRUCT_START_settings.png"
title="EQRECONSTRUCT_START_settings.png" height="394" />

**II - CHECK_DATA**
~~~~~~~~~~~~~~~~~~~

<span style="background-color: transparent;">In this composite actor a
basic sanity check is performed on the input data and appropriate action
is taken e.g. if there is no magnetics sensor data it is pointless for
the workflow to proceed and execution is immediately stopped. Additional
checking and action includes for instance flagging as invalid any sensor
data with flatline signal (see Figure below for the sequence of 2
steps)</span>

<img width="700" alt="EQRECONSTRUCT_CHECK_DATA.png"
src="https://portal.eufus.eu/twiki/pub/Main/KeplerWorkflow_EQRECONSTRUCT/EQRECONSTRUCT_CHECK_DATA.png"
title="EQRECONSTRUCT_CHECK_DATA.png" height="284" />

**III - Reconstruct**
~~~~~~~~~~~~~~~~~~~~~

<span style="background-color: transparent;">In this composite actor the
actual calculation of the reconstructed equilibrium and if requested of
the equivalent high resolution equilibrium (with cut-off plasma boundary
with X-point removed) takes place. The user can easily gain access to
several options for workflow execution by double clicking on the actor
(see Figure below). </span>

<img width="700" alt="EQRECONSTRUCT_RECONSTRUCT_settings.png"
src="https://portal.eufus.eu/twiki/pub/Main/KeplerWorkflow_EQRECONSTRUCT/EQRECONSTRUCT_RECONSTRUCT_settings.png"
title="EQRECONSTRUCT_RECONSTRUCT_settings.png" height="391" />

<span style="background-color: transparent;">Among the several options
the user can choose :</span>

-  <span style="background-color: transparent;">To perform plasma
   equilibrium reconstruction only (FBE_only = yes/no)</span>
-  <span style="background-color: transparent;">Which code to use to
   perform the equilibrium reconstruction (FBEcode)</span>

   -  `EQUAL <EquilibriumCode_EQUAL>`__\ <span style="background-color:
      transparent;"> (under testing)</span>
   -  `NICE <EquilibriumCode NICE>`__\ <span style="background-color:
      transparent;"> (under testing)</span>
   -  `EFIT++ <EquilibriumCode_EFITpp>`__\ <span
      style="background-color: transparent;"> (under
      construction)</span>
   -  `CLISTE <EquilibriumCode_CLISTE>`__\ <span
      style="background-color: transparent;"> (under
      construction)</span>

-  <span style="background-color: transparent;">Which code to use for
   high resolution equilibrium (HREcode)</span>

   -  <span style="background-color:
      transparent;">\ `HELENA <EquilibriumCode_HELENA>`__\ </span>
   -  `CHEASE <EquilibriumCode_CHEASE>`__
   -  `CAXE <EquilibriumCode_CAXE>`__

-  <span style="background-color: transparent;">If cutting the
   equilibrium to be piped to the high resultuion calculation is
   necessary (cut_eq = yes/no) and if so at what percentage of the
   normalised separatrix flux (0<cut_off<1)</span>
-  <span style="background-color: transparent;">To visualise the
   reconstruction and high resolution results during workflow execution
   (Visualise_FBE, Visualise_HRE=yes/no)</span>

<span style="background-color: transparent;">When the user chooses to
cut the boundary to perform the high resolution equilibrium
calculations:</span>

-  <span style="background-color: transparent;">A new plasma boundary is
   determined from the calculated 2D flux map</span>
-  <span style="background-color: transparent;">The plasma profiles are
   also cut accordingly (the plasma is not artifically "shrank")</span>
-  The total toroidal plasma current is *not* recalculated (equilibrium
   code should be set to use the boundary poloidal magnetic flux as
   boundary confition)
-  <span style="background-color: transparent;">A plot of the original +
   cut_off equilibrium summary is shown if
   \_Visualise\ *HRE=yes*.</span>

When the user chooses to visualise any of the calculated equilibria (
\_Visualise\ *FBE=yes or* \_Visualise\ *HRE=yes*):

-  A window showing the 2D poloidal flux map and radial profiles of
   Pressure, Toroidal averaged current density and q-profile is
   displayed for 4 seconds.
-  Corresponding image files are saved at the filesystem path indicated
   by the user selected *path* variable ( **START** actor setup).

**IV - SAVE SLICE**
~~~~~~~~~~~~~~~~~~~

In this composite actor the calculated equilibria are saved at each time
step. Depending on whether the user choses to calculate also the high
resolution equilibrium and if the Save_FBE_only parameter is set to
"yes" or "no", a different number of occurrences of the equilibrium IDS
can be stored (see Figure below).

<img width="700" alt="EQRECONSTRUCT_SAVE_settings.png"
src="https://portal.eufus.eu/twiki/pub/Main/KeplerWorkflow_EQRECONSTRUCT/EQRECONSTRUCT_SAVE_settings.png"
title="EQRECONSTRUCT_SAVE_settings.png" height="283" />

The purpose of saving at each time slice several versions of the
equilibrium is to grant extra flexibility. If the user decides to
calculate the high resolution equilibrium associated to the
reconstructed plasma equilibrium, it might be worth store all 3 stages
of the calculated equilibrium. This is managed by using multiple
*occurrences* of the equilibrium IDS.

High resolution equilibrium is stored as occurrence=0, the cut boundary
"precursor equilibrium" as occurrence=1 and the equilibrium
reconstruction as occurrence=2. To control the imasdb saving option
please refer to the SAVE SLICE parameter details.

3. Installing the workflow (under construction)
-----------------------------------------------

To obtain the workflow and included actors a dressed release of KEPLER
is recommended. To get such dressed releases please proceed as follows:

-  CPT indication 1
-  CPT indication 2

4. Setting up the Workflow and Actor parameters (under construction)
--------------------------------------------------------------------

**I - Setting the workflow parameters**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<span style="background-color: transparent;">The workflow parameters in
the **START** actor are as follows:</span>

-  **shot** : the shot number on the user database (or from another
   user) where to read the reference equilibrium from (shot/run_in pair)
-  **run_in** : the run number where the reference equilibrium is
   (shot/run_in pair)
-  **run_work** : placeholder run for the temporary Kepler CPOs
-  **run_out** : run number where the final results of the run will be
   stored (user running the workflow/shot/run_out). Since the input
   equilibrium can be a reconstruction that goes beyond the separatrix,
   3 occurrences of the equilibrium are saved (original eq., cut
   equilibrium inside separatrix and corresponding high resolution
   equilibrium).
-  **user** : username. Reading from someone else database is possible
   but the run_out will naturally be written to personal database only.
-  **device** : device database where the input reference data is. MUST
   BE the same as the device set once running "*imasdb*" command
   otherwise the run_out data will end on the wrong database path.
-  **time_begin** : starting time for the run (in *seconds* <span
   style="background-color: transparent;">).</span>
-  **time_end** <span style="background-color: transparent;"> : ending
   time for the run (in </span> *seconds* <span style="background-color:
   transparent;">).</span>
-  <span style="background-color: transparent;"> **time_dt** : time step
   (constant value) while moving from \_time\ *begin* to
   \_time\ *end*.</span>

The workflow parameters in the **Reconstruct** actor are as follows:

-  **FBE_only** <span style="background-color: transparent;"> : Set to
   "*yes*" if addressing only the plasma equilibrium
   reconstruction</span><span style="background-color: transparent;">.
   If set to "*no*" the high resolution equilibrium is also
   calculated.</span>
-  <span style="background-color: transparent;"> **FBEcode** : Choice
   for equilibrium reconstruction code to be used.</span>
-  **Visualise_FBE** <span style="background-color: transparent;"> : Set
   to "*yes*" to get a plot of the reconstructed equilibrium at every
   step.</span>
-  **Visualise_HRE** <span style="background-color: transparent;"> : Set
   to "</span>*yes*\ <span style="background-color: transparent;">" to
   get a plot of the high resolution equilibrium derived from the
   reconstructed equilibrium at every step.</span>
-  **HREcode** <span style="background-color: transparent;"> : Choice
   for high resolution equilibrium code to be used.</span>
-  **cut_eq** <span style="background-color: transparent;"> :</span>

   -  <span style="background-color: transparent;">yes : cut the input
      equilibrium (necessary if high resolution equilibrium code cannot
      handle separatrix plasma equilibria)</span>
   -  <span style="background-color: transparent;">no : input
      equilibrium is used "as is".</span>

-  **cut_off** : float ]0,1], specifies the percentage of the separatrix
   flux that will define the poloidal flux of the new plasma boundary.
-  **path** <span style="background-color: transparent;"> : temporary
   folder where to dump the plots generated. Also used to store output
   files (used by HELENA)</span>

The workflow parameters in the **SAVE SLICE** actor are as follows:

-  **Save_FBE_only**:

   -  yes : only occurrence=0 is saved. If the user set
      \_FBE\ *only=yes* then the equilibrium reconstruction is saved,
      otherwise the high resolution equilibrium is stored.
   -  no : occurrences = 0,1,2 are saved. Only meaningful if the user
      set \_FBE\ *only=no*. High resolution equilibrium is stored as
      occurrence=0, the cut boundary "precursor equilibrium" as
      occurrence=1 and the equilibrium reconstruction as occurrence=2

*The user can always stop the workflow by Pressing the STOP button in
Kepler canvas.*

**II -** <span style="background-color: transparent;"> Setting actor parameters</span>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Actor parameters are set on the actors themselves (not passed by the
workflow). To access the actors codeparam the easiest route is to :

1 Click on "Outline" Tab (below the "Pause" button in the KEPLER canvas)
1 Type the name of the actor and press "Search" (or Enter) 1 On the
final item in the chain of the actor composite, right click and press
"Configure". A pop-up panel appears 1 Click on "Edit Code Parameters"
and a new window appears 1 Edit the code parameters and Press "Save &
Exit" 1 Press "Commit" and setting is completed To have detailed
information on how to configure each one of the available actors please
check their documentation
`here <EquilibriumAndStabilityChain#Equilibrium_reconstruction_actor>`__
or
`here <EquilibriumAndStabilityChain#High_resolution_equilibrium_acto>`__.

5. Test cases and self-oriented training (under construction)
-------------------------------------------------------------

Several test cases are available for testing, corresponding to different
applications/examples. The itmdb files are found on the software release
folder under */tutorial*

==== ======== ====== ===== === ==============================================================================================================================================================================================
Case User     Device Shot  Run Description
==== ======== ====== ===== === ==============================================================================================================================================================================================
1    g2rcoelh test   84600 28  JET shot using exp2imas UDA plugin using 3.20.0 DD, 3.8.3 UAL and 2.2.2 UDA ("old" low level UAL). Contains the following IDSs: IRON_CORE, MAGNETICS, PF_ACTIVE, WALL, TF, THOMSON_SCATTERING.
2                             
3                             
4                             
5                             
==== ======== ====== ===== === ==============================================================================================================================================================================================

`Guided Tutorial on EQRECONSTRUCT (under
construction) <%ATTACHURL%/Tutorial_EQRECONSTRUCT.pdf>`__

6. News and Recent activity
---------------------------

*8th March 2019: JET version of the workflow tested successfully on
test/84600/28 database. Only EQUAL + HELENA codes included. Successful
run from t=49s to 53s with both EQUAL and HELENA being executed and the
corresponding data stored on the IMAS database (run=33).*
