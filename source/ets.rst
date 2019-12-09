################################
 Core Transport Simulator (ETS)
################################

*****************
ETS Documentation
*****************
This page contains useful information on the European Transport Simulator (ETS) including documentation, description of the pre and post-processing tools used with ETS as well as instructions on how to use ETS and tools on the EUROfusion Gateway.

Configuration of the ETS-5 workflow in Kepler 
=============================================

ETS-5 uses CPO for actor integration in Kepler and as input data to the workflow. This means that the user environment
needs to be set up as ITM environment. 

**To do so login on the EUROfusion Gateway and type the following commands:**

.. code-block:: console

  >module purge
  >module load cineca
  >module load itmenv/ETS_4.10b.10_v5.4.0
  >source $ITMSCRIPTDIR/ITMv2.sh JET
  >export ITM_KEPLER_DIR=$ITMWORK/my_keplers
  >export _JAVA_OPTIONS=-Dsun.java2d.xrender=false
  >export I_MPI_FABRICS=shm
  >export _JAVA_OPTIONS="-Xss20m -Xms4g -Xmx8g -Dsun.java2d.xrender=false"

The command 'module load itmenv/ETS...' loads the itmenv environment and in particular the ETS / Kepler version 5.4.0
To load a different version just change the number e.g. v5.5.0

The $ITMSCRIPTDIR/ITMv2.sh JET command will set up the local database to JET. This menas that any simulation done with ETS
will be saved under the JET database (even if you are simulating TCV!!). 

The remaining commands are JAVA options for running Kepler and setting of MPI useful for running parallel actors.

If it is the first time you run ETS then you will need to install your first 'dressed' Kepler version which corresponds
to Kepler with all the WPCD actors embedded in it.

**This can be done by executing the following command**

.. code-block:: console
  >install_kepler.sh ets_v550 trunk/ETS_4.10b.10_v5.5.0/central "dressed central kepler v5.5.0"
  >switch_to_kepler.sh ets_v550

**For loading the Workflow+tools(import data, postprocessing):**

.. code-block:: console
  >svn co https://gforge6.eufus.eu/svn/keplerworkflows/tags/ETS_4.10b.10_v5.5.0

The above commands requires enabled access to GFORGE (if you are a simple user you need to get access to GFORGE enabled).

**Plotting routines such as kplots can be found under** 

.. code-block:: console
  >cd $KEPLER 

You are now ready to start ETS!!

Instructions on the ETS configuration options can be found `here <https://users.euro-fusion.org/tfwiki/images/5/56/Ets_config_v3.pdf>`__

Instructions on HCD module in ETS can be found `here <https://users.euro-fusion.org/tfwiki/images/4/4a/Hcd_config_v1.pdf>`__

Instructions on impurities in ETS (including example workflow and plotting tools) can be found `here <https://users.euro-fusion.org/pages/tfiospti/ETSmeetings/08Dec2017/Impurities_in_ETS_v5_dy.pdf>`__

JET data to ETS
===============
ETS uses a standard format for input/output data. In order to get data from different machines (in different formats, using different units) a dedicated tool called "exp2itm" is provided. This section describes how this tool can be used to convert JET data to be used in ETS.

Information about available data mappings is provided `here <https://users.euro-fusion.org/tfwiki/index.php/Mappings_jet_ets>`__.

Guidelines to get JET data are provided `here <https://users.euro-fusion.org/tfwiki/index.php/Get_jet_data_gen>`__

ETS releases
============

Information related to the ETS releases is given in this section.

`changes, updates for ETS release 5.1.0 <https://users.euro-fusion.org/tfwiki/index.php/Changes_v510>`__

`changes, updates for ETS release 5.0.3 <https://users.euro-fusion.org/tfwiki/index.php/Changes_v503>`__

`changes, updates for ETS release 5.0.2 <https://users.euro-fusion.org/tfwiki/index.php/Changes_v502>`__

ETS verification and validation
===============================

Activities to verify ETS against other codes and to validate ETS against experimental data are summarized here (including instructions for users)

`ETS benchmark against TRANSP <https://users.euro-fusion.org/tfwiki/index.php/ETS_TRANSP_benchmark>`__

Useful links
============

This section contains further links to documentation connected to ETS.

The training material is available here: `ETS Training Tutorials <https://users.euro-fusion.org/iterphysicswiki/index.php/ETS_Training_Tutorials>`_

- `set up environment <http://portal.eufus.eu/twiki/bin/view/Main/Accessing_EUIM_infrastructure_at_JET>`_, `EU-IM_set_up_at_JET <https://users.euro-fusion.org/iterphysicswiki/index.php/EU-IM_set_up_at_JET>`_
- get ETS (see Running the ETS Workflow  in `set up environment <http://portal.eufus.eu/twiki/bin/view/Main/Accessing_EUIM_infrastructure_at_JET>`_)
- `data structure to be used <http://www.eufus.eu/ITM/imports/isip/public/data_structure/4.10b.10/Phase4TOP.html>`_ (list of CPOs)
- test pulses (in preparation)
- `set up workflow parameters <http://www.eufus.eu/ITM/html/ETS_A_4.10b_run_config.html set up workflow parameters>`_
- `run ETS in batch mode <http://portal.eufus.eu/twiki/bin/view/Main/RunningKeplerViaQueue>`_
- Coordinate conventions, see `COCOS documentation <http://www.eufus.eu/ITM/html/itm_conventions.html#itm_conventions_9>`_, `COCOS paper <http://www.sciencedirect.com/science?_ob=ArticleListURL&_method=list&_ArticleListID=-950871037&_sort=r&_st=13&view=c&md5=a2e468420878e8d72cc5cabfc2f184ff&searchtype=a>`_
- `Feedback <http://portal.eufus.eu/twiki/bin/view/Main/Feedback_on_ETS?sso_from=bin/view/Main/Feedback_on_ETS>`_ 
- `Submit Report Request <http://gforge6.eufus.eu/gf/project/generalsupport/tracker/?action=TrackerItemAdd&tracker_id=184>`_


`ETS Users Group <https://users.euro-fusion.org/tfwiki/index.php/ETS_Users_Group>`__ containing information related to the ETS User's meetings

`ETS training 2018 <https://users.euro-fusion.org/iterphysicswiki/index.php/ETS_Training_2018>`__ web page for ETS training at JET 14-18 May 2018

-  `Description of the ETS <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/ETS_TRANSPORT_EQUATIONS.pdf>`__ 
-  `Form of the standardize equations <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/STANDARDISED_EQUATION.pdf>`__
-  `ETS User Guide <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/ETS_User_Guide.pdf>`__
-  `ETS Status <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/ETS_Status.pdf>`__
-  :download:`ETS Transport equations, variables and Fortran implementation<static/ETS_TRANSPORT_EQUATIONS_V1.0.pdf>`

.. _ETS_in_KEPLER:

***********************
ETS workflows in KEPLER
***********************

The ETS workflow is used for 1-D transport simulation of a tokamak core
plasma.

**ETS workflows in KEPLER**:

-  use actors and composite actors from other IMPs, thus for the most
   recent versions of them please check with relevant project
-  complex, but clearly structured workflow, which offers user friendly
   interface for configuring the simulation
-  allow for easy modifications (connecting new modules, or reconnecting
   parts of the workflow) through an easy graphical interface
-  provide users with all updates through the version control system
-  still in active development tool


The default ETS release is the tag4.10b10.3

**Before installation make sure that:**

-  you have your private data base for the version of the
   UAL
   required by the workflow
-  you have the version of
   KEPLER
   required by the workflow installed. Quick start on kepler required
   for the ETS can be found
   here
-  inside the window, where you will be downloading the ETS the source
   command:

.. code-block:: console

   >source $EU-IMSCRIPTDIR/EU-IMv1 Kepler_Version Data_Base_Name UAL_Version
            
is executed.

**To install your local copy of the ETS workflow please do:**

.. code-block:: console

   >svn co https://gforge6.eufus.eu/svn/keplerworkflows/tags/ets_4.10b10.3/ETS
   >cd ETS
   >make import_ets

Press the play button on the workflow.

.. figure:: images/ets_1.png
   :align: center

**The workflow shall run!** If it
does not, please use the contact from above.

**Starting the workflow:**
If you have the workflow already installed, there are there are several
ways tio execute it:

-  For execution via kepler GUI:
   
.. code-block:: console
                
      >kepler.sh workflow_path/workflow_name.xml
          

-  For execution in none GUI mode:

.. code-block:: console

      >kepler.sh -runwf -nogui -redirectgui $EU-IMHOME/some_dir_name workflow_path/workflow_name.xml
          

-  For execution in batch mode:
   it is essential to keep the workflow inside your $EU-IMWORK area

   it is essential to switch to scripts/R2.2 module

.. code-block:: console

      >module switch scripts/R2.2
      >submit_batch_kepler.sh run_dircetory 1 $EU-IMWORK/workflow_path/workflow_name.xml $EU-IMSCRIPTDIR/batch_submission/ParallelKepler.bsub
          


.. _ETS_A_4.10b_run_config:

Configuring the ETS run
=======================

.. _ETS_A_4.10b_workflow_parameters:

Workflow parameters
-------------------

General Parameters
~~~~~~~~~~~~~~~~~~

-  USER
   - your userid
-  MACHINE
   - machine name (database name) for which comutations are done
-  SHOT_IN
   - input shot number
-  RUN_IN
   - input run number
-  SHOT_OUT
   - output shot number
-  RUN_OUT
   - output run number
-  NUMERICAL_SOLVER
   - choice of the numerics solving transport equations (RECOMENDED
   SELECTION: 3 or 4)

Space resolution
~~~~~~~~~~~~~~~~

-  NRHO
   - number of radial points for transport equations
-  NPSI
   - number of points for equilibrium 1-D arrays
-  NEQ_DIM1
   - number of points for equilibrium 2-D arrays, first index
-  NEQ_DIM2
   - number of points for equilibrium 2-D arrays, second index
-  NEQ_MAX_NPOINTS
   - maximum number of points for equilibrium boundary

Time resolution
~~~~~~~~~~~~~~~

**Start and End time:**

-  TBEGIN
   - Computations start time
-  TEND
   - Computattions end time

.. figure:: images/ets_config1.png
   :align: center

   
**Time step:**

-  right click on the box
   BEFORE THE TIME EVOLUTION
-  select
   Configure actor
-  TAU
   :specify value of the time step in [s]
-  TAU_OUT
   : specify value of the output time interval in [s]
-  Commit

.. figure:: images/ets_settings1.png
   :align: center

.. _ETS_A_4.10b_composition:

Ion, Impurity and Neutral Composition
-------------------------------------

Before starting the run you need to define types of main ions, impurity
(optional) and neutrals (optional) to be included in simulations.

To define plasma composition:

-  right click on the box
   BEFORE THE TIME EVOLUTION
-  select **Configure actor**
-  choose one of modes for setting
   Run_compositions

   -  from_input_CPO
      - will pick up the COMPOSITIONS structure of the COREPROF CPO
      saved to the input shot;
   -  configure_manually
      - will force the composition from the values specified below

-  specify values of atomic mass (AMN_ion), nuclear charge ( ZN_ion ) and
   charge ( Z_ion , from the first ion to the last [1:NION] , separated by
   commas
-  (optional) specify values of atomic mass ( AMN_imp ), nuclear charge (
   ZN_imp ) and maximal ionization state ( max_Z_imp ) for impurity ions,
   from the first to the last [1:NIMP] , separated by commas
-  (optional)for neutrals activate, by switchen them to **ON**, the types which
   shall be followed by neutral solver
-  press **Commit**

.. figure:: images/ets_plasma_composition.png
   :align: center
           
.. _ETS_A_4.10b_equations:

Equations to be solved and boundary conditions
----------------------------------------------

Main Plasma
~~~~~~~~~~~

Before starting the run you need to select the type and value of the
boundary conditions for all equations. Please note that the value should
correspond to the type. All equations allow for following types of
boundary conditions:

-  OFF
   - equation is not solved, initial profiles will be kept for whole run
-  value
   - edge value should be specified
-  gradient
   - edge gradient should be specified
-  scale_length
   - edge scale length should be specified
-  generic
   - generic form:
   a1*y´ + a2*y = a3
   of the boundary condition is assumed, 3 coefficients (a1, a2, a3) should be provided
-  value_from_input_CPO
   - equation is solved, edge value evolution will be red from input
   shot
-  profile_from_input_CPO
   - equation is not solved, profile evolution will be red from input
   shot

The particular equation will be activated if the boundary condition type
for it is other than *OFF*

.. figure:: images/ets_run_settings3.png
   :align: center
           

To set up boundary conditions:

-  right click on the box BEFORE THE TIME EVOLUTION
-  select **Configure actor**
-  select appropriate boundary condition for each equation
-  specify values for boundary conditions corresponding to the type and
   to the ion component
-  **Commit**

The workflow will not allow the user all particle components
(ions[1:NION]+electrons) to be run predictively. At least one of them shall
be set to OFF (this component will be computed from quasi-neutrality
condition).

!!! If electron density is solved, all ions with ni_bnd_type=OFF will be
computed from the quasineutrality condition and scaled proportional to
specified *ni_bnd_value* or inversely proportional to their charge,
*charge_proportional*. This is defined by option:
*ni_from_quasineutrality*.

Impurity
~~~~~~~~

You can set up the boundary conditions for impurity ions in a similar
way as for main ions. !!! Note, that at the moment only types: *OFF*;
*value* and *value_from_input_CPO* are accepter by impurity solver.

To set up boundary conditions:

-  right click on the box BEFORE THE TIME EVOLUTION
-  select **Configure actor**
-  select appropriate boundary condition for each impurity species (
   OFF-equation is not solved)
-  specify values for boundary density of each impurity component
   [1:MAX_Z_IMP], separated by commas
-  **Commit**

.. figure:: images/ets_run_settings4.png
   :align: center

Interface for impurity boundary condition has additional option,
*coronal_distribution*, that allow to preset the edge values or entire
profiles of individual ionization states from coronal distribution. In tis
case only single value is required to be specified for each impurity
boundary value. The options are:

-  OFF
   - the boundary values for impurity densities will be as they are
   specified above;
-  boundary_conditions
   - the boundary densities will be renormalized with corona, using the
   first element from above as a total density
-  boundary_conditions_and_profiles
   - the boundary densities and starting profiles will be renormalized
   with corona, using the first element from above as a total density

Neutrals
~~~~~~~~

!!! AT THE MOMENT BOUNDARY CONDITIONS FOR NEUTRAL VELOCITIES ARE DISABLED,
MIGHT BE ADDED ON REQUEST

Note, that ALL values should be specified in the order: {*1, 2, 3 ...NION, 1, 2, 3, ...NIMP*}

To set up boundary conditions:

-  right click on the box BEFORE THE TIME EVOLUTION
-  select **Configure actor**
-  select appropriate boundary condition for each neutral species (OFF-equation is not solved)
-  specify values for boundary density and temperature of each neutral component
   [1, 2, 3 ...NION, 1, 2, 3, ...NIMP], separated by commas
- **Commit**

.. figure:: images/ets_run_settings5.png
   :align: center

Input profiles interpolation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You are going to start the ETS run from some input shot, which might
contain some conflicting rho grids saved to different CPOs. Thus there is a
choice for the user to decide on the grid on which the starting profiles
should be load by the worflow,

*Interpolation_of_input_profiles*.

To define the interpolation grid select:

-  on_RHO_TOR_grid
   - interpolate input profiles based on the grid specyfied in [m];
-  on_RHO_TOR_NORM_grid
   - interpolate input profiles based on normalised rho grid [0:1]

.. figure:: images/ets_run_settings6.png
   :align: center
           
.. _ETS_A_4.10b_convergence:

Convergence loop
----------------

ETS updates input from different physics actors in a sequence, which is
finished by solving the transport equations. Ther are possible
none-linear couplings between different parts of the system. These
nonelinearities are trited by the ETS using iterations. The decision to
step in time is made by the ETS based on the criteria that the maximum
relative deviation of main plasma profiles is lower than some predefined
tolerance. There is a number of settings and sitches in the ETS that are
used by the iterative scheme. To edit them do:

-  right click on the box CONVERGENCE LOOP
-  select **Configure actor** to edit settings
-  choose your settings
-  **Commit**

.. figure:: images/ets_convergence1.png
   :align: center

Switches in the field *FREQUENCY OF CALLING THE PHYSICS ACTORS* define
how many times the the actors of a certain cathegory (equilibrium,
transport, etc.) should be called in a single time step.
By selecting *YES* all actors of this cathegory will be called every iteration
By selecting *NO* all actors of this cathegory will be called only ones in
a time step

Switches and parameters in the field *CONTROL PARAMETERS* define how
iterations are done

-  Tolerance - defines the maximum relative error of profiles change compared to
   previous iteration. If it is achieved the time steping is done.

For highly none-linear case the required precision can be achieved
faster by the iterative scheme if only fraction of the new solution is
mixed to the previous state.
The following scheme is adopted by the ets to reduce none-linearities in profiles, transport coefficients and
sources:

.. code-block:: console

   Y = (Amix * Y+) + ((1-Amix)*Y-)

where Amix is the mixing fraction You can activate the mixing of
profiles, transport coefficient and sources by selecting the
corresponding *Mixing_fraction_...* to be between [0:1]
You also can activate the authomatic ajustment of this fraction by selecting:
*Ajust_Mixing_for_...* to *YES*

.. _ETS_A_4.10b_equilibrium:

Equilibrium
-----------

Initialization Settings
~~~~~~~~~~~~~~~~~~~~~~~

Before starting the run you need to set up your initial equlibrium.
There are several options to do it: if your input shot contains the
consistent equilibrium with all necessary parameters - you can start
immediately from it; if your input shot contains the equilibrium but it
is not consistent or some parameters are missing you can check it
automatically; if your input equilibrium is corrupt or not present - you
can define the starting equlinbrium by tree moment description. To
select your starting equilibrium please do:

-  right click on the box BEFORE THE TIME EVOLUTION
-  select **Configure actor** to edit settings
-  Select your settings or specify values
-  **Commit**

.. figure:: images/ets_before_time.png
   :align: center


SETTINGS:

-  Equilibrium_configuration
   - select
   configure_manually
   if you like to specify configuration below; select
   from_input_CPO
   if all quantities should be picked up from the input CPO
-  R0_Machine_characteristic_radius
   - Characteristic radius of the machine, here B0 is measured [m]
-  B0_Magnetic_field_at_R0
   - Magnetic field measured at the position R0 [T]
-  RGEO_Major_Radius_of_LCMS_centre
   - R coordinate of the geometrical centre of the LCMS [m]
-  ZGEO_Altitude_of_LCMS_centre
   - Z coordinate of the geometrical centre of the LCMS [m]
-  Total_plasma_current_IP
   - plasma current within the LCMS [A]
-  Minor_radius
   - minor radius of the LCMS [m]
-  Elongation
   - elongation of the LCMS [-]
-  Triangularity_upper
   - upper triangularity of the LCMS [-]
-  Triangularity_lower
   - lower triangularity of the LCMS [-]
-  Equilibrium code
   - select one of available equilibrium solvers to check the
   consistency between starting equilibrium and current profile; use
   INTERPRETATIVE
   if you trust your input data (in this case the check will be
   ignorred).

.. figure:: images/ets_run_settings7.png
   :align: center
   
Please note, that different equilibrium solvers might require slightly
different input. Thus it is a user responsibility to check that the
information inside input shot/run is enough to run selected equilibrium
solver.

Run Settings
~~~~~~~~~~~~

There are several equilibrium solvers connected to the ETS. You can
select the one of them.Therefore please do:

-  right click on the box CONVERGENCE LOOP
-  select **Open actor**
-  right click on the box EQUILIBRIUM
-  select **Configure actor** to edit settings
-  choose your equilibrium solver
-  **Commit**

.. figure:: images/ets_convergence_loop_config.png
   :align: center

*INTERPRETATIVE* means that the ETS will not update the equilibrium,
instead it will be using the initial equilibrium.

Please note, that it is better to select the same code as you used for
pre-iterrations. Because outputs of different equilibrium solver are not
necessary done with the same resolution. Therefore the routine saving
the information to the data base might brake due to uncompatible sizes
of some signals.

.. figure:: images/ets_equilibrium1.png
   :align: center

.. _ETS_A_4.10b_transport:

Transport
---------

The settings for TRANSPORT can be done inside the CONVERGENCE LOOP
composite actor. Therefore please do:

-  right click on the box CONVERGENCE LOOP
-  select **Open actor**
-  right click on the box TRANSPORT
-  select **Configure actor** to edit settings
-  choose your settings
-  press **Commit**

.. figure:: images/ets_transport1.png
   :align: center
   
Transport models
~~~~~~~~~~~~~~~~

ETS constructs the total transport coefficients from the combination of
Anomalous transport (model choice), Neoclassical transport (model
choice), Database transport (transport coefficients be saved to the
input shot) and Background transport (Transport coefficients defined
through the GUI interface)

D_tot = D_DB*M_DB + D_AN*M_AN + D_NC*M_NC + D_BG*M_BG

You should choose from the list of evailable models in each cathegory or
switch it **OFF**

Individual multipliers for all channels shall be specified on the lower
level through the code parameters of Transport Combiner

The list of available transport models can be found
`here <https://www.eufus.eu/documentation/EU-IM/html/ets_status.html>`__.

.. figure:: images/ets_transport2.png
   :align: center
           
Background transport
~~~~~~~~~~~~~~~~~~~~

You can add the constant background level for each coefficient (ion and
impurity coefficients are expected to be the strings of [1:NION] and
[1:NIMP] elements respectively, separated by commas)

.. figure:: images/ets_transport3.png
   :align: center


Edge transport barrier
~~~~~~~~~~~~~~~~~~~~~~

In this section you can artificially supress the transport outside of
specified *RHO_TOR_NORM_ETB*. Total transport coefficients for all
transport channels (ne, ni, nz, Te, Ti,...) will be reduced to constant
values specified below (ion and impurity coefficients are expected to be
the strings [1:NION] and [1:NIMP] respectively)

.. figure:: images/ets_transport4.png
   :align: center

Total transport coefficients
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The fine tuning of of transport coefficients can be done through editing
the XML code parameters of the **transport combiner** actor:

-  In Outline browse for transportcombiner
-  select **Configure actor**
-  click **Edit Code Parameters**
-  

   -  If you select **OFF** contributions from all transport models to this channel will be
      nullified;
   -  If you select **Multipliers_for_contributions_from** the transport channel
      will be activated, and the total transport coefficient will be
      combined from active tranport models. You gust need to specify
      multiplier against each channel;
   -  For convective velocity there is an additional option
      **V_over_D_ratio_for_contributions_from**.
      With this option selected the combiner will ignore the
      convective components provided by transport models. The convective
      velocity will be determined from the diffusion coefficient by
      applying fixed V/D ratio (
      for inward pinch the values should be negative!
      ).

-  **Save and exit**
-  **Commit**

.. figure:: images/ets_transport_combiner.png
   :align: center
   
.. _ETS_A_4.10b_mhd:

MHD
---

The settings for MHD type of events can be done inside the CONVERGENCE
LOOP composite actor. Therefore please do:

-  right click on the box CONVERGENCE LOOP
-  select **Open actor**
-  right click on the box MHD
-  select **Configure actor** to edit settings
-  choose your settings
-  **Commit**

.. figure:: images/ets_mhd.png
   :align: center

At the moment ETS allows only for NTM to be activated. The sawtooth
module is expected to be deployed before EU-IM Code Camp in Slovenia.

User can ajust the following NTM settings:

-  NTM – **ON** means that ETS will add the NTM driven transport to the total
   transport coefficient; **OFF** -ignored
-  NTMTransportMultiplier – the transport contrinution from NTM will be multiplied with this
   value
-  Onset_NTM_time - activation time for the NTM mode
-  Onset_NTM_width - starting width of the mode
-  m_NTM_poloidal_number
-  n_NTM_toroidal_number
-  NTM_phase
-  NTM_frequency

.. figure:: images/ets_mhd2.png
   :align: center
           
.. _ETS_A_4.10b_sources:

Sources and impurity
--------------------

The settings for SOURCES AND IMPURITY can be done inside the CONVERGENCE
LOOP composite actor. Therefore please do:

-  right click on the box CONVERGENCE LOOP
-  select **Open actor**
-  right click on the box SOURCES AND IMPURITY
-  select **Configure actor** to edit settings
-  choose your settings
-  **Commit**

.. figure:: images/ets_source1.png
   :align: center

Analytical & Impurity sources
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a number of sources developed by IMP3 project, which are actors
or internal routines of the transport solver. You can activate them by
selecting **ON / OFF** in front of corresponding source:

-  Database Sources – **ON** - ETS will pick up the evolution of source profiles saved to your
   input shot/run; **OFF** -ignored
-  Ohmic Heating – **ON** - ETS will compute Ohmic heating internaly; **OFF** -ignored
-  Gaussian Sources – **ON** - ETS will add sources from the Gaussian source actor (you can
   configure heat and particle deposition profiles by editing the code
   parameters of the actor); **OFF** -ignored
-  Neutral Sources – **ON** - Fluid neutrals will be solved according to the boundary conditions
   specified on ¨Before_time_evolution¨ composite actor interface; **OFF** -ignored
-  Switch_IMPURITY – **ON** - Impurity density and radiative sources will be computed;
   **OFF** -ignored; **INTERPRETATIVE** – profiles of impurity density will be read from input shot/run

.. figure:: images/ets_sources2.png
   :align: center

HCD sources
~~~~~~~~~~~

There is a number of sources developed by HCD project, that are
incorporated by the ETS workflow.

For the HCD sources please activate the type of heating source, by
ticking the box in front of it, and select the code to simulate it.

.. figure:: images/ets_sources3.png
   :align: center


You also need to configure initial IMP5HCD settings. Therefore please:

-  right click on the box BEFORE THE TIME EVOLUTION
-  select **Open Actor**
-  right click on the box SETTINGS FOR HEATING AND CURRENT DRIVE
-  select **Configure actor**
-  edit the stettings
-  **Commit**

.. figure:: images/ets_sources4.png
   :align: center

The detailed information on initial IMP5HCD settings can be found
`here <https://www.eufus.eu/documentation/EU-IM/html/imp5_imp5hcd.html>`__.
Please note that settings for NBI are done independent for each PINI.
Therefore, for NBI settings, please insert the values separated by
commas. The number of the element in the array corresponds to the number
of activated PINI. Maximum accepted number of PINIs = 16.

.. figure:: images/ets_sources5.png
   :align: center

Power control
~~~~~~~~~~~~~

You also can activate the power control for the IMP5HCD sources.

.. figure:: images/ets_sources6.png
   :align: center

If the POWER_CONTROL is not **OFF**, there are two modes of
operation: **specific** and **frequency**

For **specific** you should specify the time sequence separated by commas
and the corresponding power sequence (where first power level
corresponds to the first time, second to second and etc.). Linear
interpolation will be done between the sequence points. For example: if
you give the power **sequence** = 2e6,4e6,1e6 and **times** = 0.0, 0.7, 1.5 (s) the delivered power would be:

.. figure:: images/ets_sources7.png
   :align: center

For **frequency** you should specify the power levels sequence separated
by commas, start and end time of the power control and the frequency of
switching between these levels. For example: if you give the power
**sequence** = 2e6,4e6,1e6 and **frequency** = 10 (Hz) **tstart** = 0.0 (s)
**tend** = 1.5 (s) the delivered power would be:

.. figure:: images/ets_sources8.png
   :align: center

Total power
~~~~~~~~~~~

Profiles of the total source for each channel are obtained from the the
individual contributions (Data Base, Gaussian, Neutrals, Impurity and
HCD) as a summ of all activated sources multiplied with coefficients
specified on the interface of the composite actor.

S_tot = S_DS*DSM + S_GS*GSM + S_Neu*NeuSM + S_IMP*IMPSM + S_HCD*HCDSM

The fine tuning of of sources can be done through editing the XML code
parameters of the source combiner actor:

-  In the Outline browse for source combiner
-  select **Configure actor**
-  click **Edit Code Parameters**
-  If you like the sources to the particular equation being activated -
   select **from_input_CPOs**, and then, put the multipliers against each
   contribution; if you select **OFF** contributions from all sources to
   this channel will be nullified.
-  save and exit
- **Commit**

.. figure:: images/ets_sources9.png
   :align: center

.. _ETS_A_4.10b_inst_events:

Instantaneous events & Actuators
--------------------------------

At the moment, user can swith **ON** and **OFF** two types of events: PELLET
and SAWTOOTH

Pellet
~~~~~~

At the top level of the workflow you can configure times for pellet
injection

-  right click on the box INSTANTANEOUS EVENTS & ACTUATORS
-  select **Configure actor** to edit settings
-  Select Pellet_injection equal **ON** if you like to use pellet in your
   simulation
-  Select mode of operation:

   -  Times_for_pellets equals **specific** – pellets will be shut at exact times specified in array times_pellet
   -  Times_for_pellets equals **frequency** – pellets will be shut from
      tstart_pellet until tend_pellet with a frequency_pellet

-  **Commit**

.. figure:: images/ets_instantaneous_events1.png
   :align: center

Parameters of individual pellet need to be configured through the
code_parameters of the PELLET actor. To access it go to **Outline** on the
right upper corner and open the following:

.. figure:: images/ets_instantaneous_events2.png
   :align: center

-  right click on the actor PELLET
-  select **Configure actor**
-  click **Edit Code Parameters**
-  edit parameters and click **save and exit**
-  **Commit**

.. figure:: images/ets_instantaneous_events3.png
   :align: center
   
amn – atomic mass number: array of elements separated by space
(1:nelements) [-]

zn – nuclear charge: array of elements separated by space (1:nelements)
[-]

fraction – fraction of each element in the pellet, based on the number
of atoms: array of elements separated by space (1:nelements) [-]

rpell – radius of the pellet [m]

vpell – velocity of the pellet [m/s]

rcloud – radius of the pellet cloud [m], radial extension of the cloud =
2*rp0

lcloud – length of the pellet cloud along the field line [m]

Tcloud – temperature of the pellet cloud [eV]

Pellet path is specified by two points, for which R and Z coordinated
should be specified

R – R coordinates of the pivot and second points of the pellet path,
separated by space [m]

Z – Z coordinates of the pivot and second points of the pellet path,
separated by space [m]

Control switches allow to activate:

-  drifts - YES - will activate radial displacement of deposition profile, same
   for all path points
-  cooling - YES - will activate cooling of the other side of the plasma due to
   parallel heat transport (essential for large pellets, which might
   cross the same flux surface twice)
-  JINTRAC - YES - will provide temperature reduction consistent with the model
   used in JETTO

Sawtooth
~~~~~~~~

At the top level of the workflow you can switch ON/OFF possible MHD
events

-  right click on the box INSTANTANEOUS EVENTS & ACTUATORS
-  select **Configure actor** to edit settings
-  Select SAWTOOTH **ON** if you like to use them in your simulation
-  **Commit**

Actuators
~~~~~~~~~

At the top level of the workflow you can switch ON/OFF actuator for
runaways

-  right click on the box INSTANTANEOUS EVENTS & ACTUATORS
-  select **Configure actor** to edit settings
-  Select actuator_runaways **ON** if you like to use them in your simulation
-  **Commit**
   
.. _ETS_A_4.10b_scenario:

Scenario output
---------------

You can summarize the ETS run by activating the output to SCENARIO CPO
(as post-processing of the run).

To activate the SCENARIO output:

-  right click on the box AFTER THE TIME EVOLUTION
-  select **Configure actor**
-  select Generate_SCENARIO_output_from_ETS_run equal **YES**
-  **Commit**
   
.. figure:: images/ets_scenario.png
   :align: center

   
.. _ETS_A_4.10b_visualization:

Visualization
--------------

There is a number tools visualizing the ETS run.

Multiple Tab Display
--------------------

The display appeares automaticaly when the ETS workflow is launched. It
displays diagnostic text messages from the workflow on following topics:

-  Input data statement
-  Iterations to check the initial convergence between EQUILIBRIUM and
   CURRENT
-  Time evolution
-  Convergence of iteratinos within the time step
-  IMP5HCD settings
-  Power used by IMP5HCD actors durung the run

Also the error messages from execution of the workflow will be displayed
here.

.. figure:: images/ets_visual1.png
   :align: center

Python Visualization Display
----------------------------

Please note, if you plan to use python based vizualization **nomatlab**
argument is essential by the opening of the workflow.

.. code-block:: console

   >kepler.sh nomatlab workflow_path/workflow_name.xml

You can activate the graphical visualization of your run evolution:

-  right click on the box Check Time & Save Slice
-  select **Configure actor**
-  select visualisation **YES** or **NO**
-  **Commit**

.. figure:: images/ets_visual2.png
   :align: center
   
Then evolution of main discharge parameters will be shown in this
window:

.. figure:: images/ets_visual3.png
   :align: center

.. _ETS_A_4.10b_list_actors:

List of Actors
==============

UNDER DEVELOPMENT

.. _ETS_A_4.10b_list_actors_Equilibrium:

Equilibrium actors
------------------

+------------+-----------------+-----------------+--------------------------+
| Code name  | Code Category   | Contact persons | Short description        |
+============+=================+=================+==========================+
|  chease    | | Grad-Shafranov| Olivier Sauter  | | Chease is a fixed      |  
|            | | solver        |                 | | boundary Grad-Shafranov| 
|            |                 |                 | | solver based on cubic  | 
|            |                 |                 | | hermitian finite       | 
|            |                 |                 | | elements see           | 
|            |                 |                 | | H. Lütjens, A.         | 
|            |                 |                 | | Bondeson, O. Sauter,   | 
|            |                 |                 | | Computer Physics       | 
|            |                 |                 | | Communications 97      | 
|            |                 |                 | | (1996) 219-260         | 
+------------+-----------------+-----------------+--------------------------+
| emeq       | /               | /               |                          |
+------------+-----------------+-----------------+--------------------------+
| spider     | /               | /               |                          |
+------------+-----------------+-----------------+--------------------------+

.. _ETS_A_4.10b_list_actors_CoreTransport:

Core transport actors
---------------------

+--------------------+-------------------+-----------------+--------------------------+
| Code name          | Code Category     | Contact persons | Short description        |
+====================+===================+=================+==========================+
| ETS                | Transport solver  | Denis Kalupin   |                          |
+--------------------+-------------------+-----------------+--------------------------+
| BohmGB             | | Bohm/gyro-Bohm  | /               |                          |
|                    | | transport       |                 |                          |
|                    | | coefficients    |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| TCI/Weiland        | | Transport       | Pär Strand      |                          |
|                    | | coefficient from|                 |                          |
|                    | | coefficients    |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| TCI/GLF23          | | Transport       | /               |                          |
|                    | | coefficient from|                 |                          |
|                    | | drift wave      |                 |                          |
|                    | | turbulence      |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| TCI/RITM           | | Transport       | /               |                          |
|                    | | coefficient from|                 |                          |
|                    | | drift wave      |                 |                          |
|                    | | turbulence      |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| | TCI/MMM          | | Transport       | /               |                          |
| | (not yet         | | coefficient from|                 |                          |
| | in ETS)          | | drift wave      |                 |                          |
|                    | | turbulence      |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| | TCI/EDWM         | | Transport       | /               |                          |
| | (not yet         | | coefficient from|                 |                          |
| | in ETS)          | | drift wave      |                 |                          |
|                    | | turbulence      |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| | nclass           | | Neoclassical    | Pär Strand      |                          |
| | (not yet         | | transport       |                 |                          |
| | in ETS)          | | coefficients    |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| | neos             | | Neoclassical    | Olivier Sauter  |                          |
| | (not yet         | | transport       |                 |                          |
| | in ETS)          | | coefficients    |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| neowesz            | | Neoclassical    | Bruce Scott     | | Neoclassical transport |
|                    | | transport       |                 | | coefficients based on  |
|                    | | coefficients    |                 | | the expression in John |
|                    |                   |                 | | Wesson's book Tokamaks.|
+--------------------+-------------------+-----------------+--------------------------+
| neoartz            | | Neoclassical    | Bruce Scott     |                          |
|                    | | transport       |                 |                          |
|                    | | coefficients    |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| spitzer            |                   |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| ETBtransport       |                   |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| coronal            |                   |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+
| synchrotronsources |                   |                 |                          |
+--------------------+-------------------+-----------------+--------------------------+

.. _ETS_A_4.10b_list_actors_Edge:

Edge transport actors
---------------------

.. _ETS_A_4.10b_list_actors_HCD:

Heating and current drive actors
--------------------------------

.. Table

+---------------+-----------------+-----------------+----------------------------------------------+
| Code name     | Code Category   | Contact persons | Short description                            |
+===============+=================+=================+==============================================+
|  gray         | EC/waves        | Lorenzo Figini  | | GRAY is a quasi-optical ray-tracing code   |
|               |                 |                 | | for electron cyclotron heating & current   |
|               |                 |                 | | drive calculations in tokamaks.            |
|               |                 |                 | | Code-parameter documentation can be found  |
|               |                 |                 |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| travis        | EC/waves        | | Nikolai       | | Travis is a ray-tracing code for electron  |
|               |                 | | Marushchenko  | | cyclotron heating & current drive          |
|               |                 | | and           | | calculations in tokamaks.                  |
|               |                 | | Lorenzo       |                                              |
|               |                 | | Figini        |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| Torray-FOM    | EC/waves        | Egbert Westerhof| | Torray-FOM is a ray-tracing code for       |
|               |                 |                 | | electron cyclotron heating & current       |
|               |                 |                 | | drive calculations in tokamaks.            |
+---------------+-----------------+-----------------+----------------------------------------------+
| bbnbi         | NBI/source      | Otto Asunta     | | Calculate the deposition rates of neutrals |
|               |                 |                 | | beam particles, i.e. the input source for  |
|               |                 |                 | | Fokker-Planck solvers (not the heating and |
|               |                 |                 | | current drive). Note that the number of    |
|               |                 |                 | | markers generated by BBNBI is described by |
|               |                 |                 | | the kepler variable number_nbi_markers_in. |
|               |                 |                 |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| nemo          | NBI/source      | | Mireille      | | Calculate the deposition rates of neutrals |
|               |                 | | Schneider     | | beam particles, i.e. the input source for  |
|               |                 |                 | | Fokker-Planck solvers (not the heating and |
|               |                 |                 | | current drive). Code-parameter             |
|               |                 |                 | | documentation can be found                 |
|               |                 |                 |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| nuclearsim    | nuclear/source  | Thomas Johnson  | | Simple code for nuclear sources from       |
|               |                 |                 | | thermal/thermal reactions. Code-parameter  |
|               |                 |                 | | documentation can be found                 |
+---------------+-----------------+-----------------+----------------------------------------------+
| nbisim        | | NBI, alphas/  | Thomas Johnson  | | Simple Fokker-Planck code calculating the  |
|               | | Fokker-Planck |                 | | collisional ion and electron heating from  |
|               |                 |                 | | a particle source, either NBI or nuclear.  |
|               |                 |                 | | Code-parameter documentation can be found  |
+---------------+-----------------+-----------------+----------------------------------------------+
| risk          | | NBI Fokker-   | | Mireille      | | Bounce averaged steady-state Fokker-Planck |
|               | | Planck        | | Schneider     | | solver calculating the collisional ion and |
|               |                 |                 | | electron heating from a particle source    |
|               |                 |                 | | and the NBI current drive. Code-parameter  |
|               |                 |                 | | documentation can be found                 |
+---------------+-----------------+-----------------+----------------------------------------------+
| spot          | | NBI, alphas   | | Mireille      | | Monte Carlo solver for the Fokker-Planck   |
|               | | and           | | Schneider     | | equation. Traces guiding centre orbits in  |
|               | | ICRF Fokker   |                 | | a steady state magnetic equilibrium under  |
|               | | -Planck       |                 | | the influence of Coloumb collisions and    |
|               |                 |                 | | interactions with ICRF waves (through the  |
|               |                 |                 | | RFOF library). The code can also be used   |
|               |                 |                 | | for NBI and alpha particle modelling as it |
|               |                 |                 | | can handle source terms from the           |
|               |                 |                 | | distsource CPO.                            |
+---------------+-----------------+-----------------+----------------------------------------------+
| ascot4serial  | | NBI, alphas,  | | Otto          | | Monte Carlo Fokker-Planck solver           |
|               | | ICRF/         | | Asunta/       | | calculating the collisional ion and        |
|               | | Fokker-Planck | | Seppo         | | electron heating from a particle source    |
|               |                 | | Sipila        | | and the NBI current drive.                 |
+---------------+-----------------+-----------------+----------------------------------------------+
| ascot4parallel| | NBI, alphas,  | | Otto          | | Monte Carlo Fokker-Planck solver           |
|               | | ICRF/         | | Asunta/       | | calculating the collisional ion and        |
|               | | Fokker-Planck | | Seppo         | | electron heating from a particle source    |
|               |                 | | Sipila        | | and the NBI current drive.                 |
+---------------+-----------------+-----------------+----------------------------------------------+
| Lion          | IC / waves      | | Olivier Sauter| | Global ICRF wave solver. Code-parameter    |
|               |                 | | and           | | documentation can be found                 |
|               |                 | | Laurent       |                                              |
|               |                 | | Villard       |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| Cyrano        | IC / waves      | | Ernesto Lerche| | Global ICRF wave solver. Code-parameter    |
|               |                 | | and           | | documentation can be found                 |
|               |                 | | Dirk          |                                              |
|               |                 | | Van Eester    |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| | Eve         | IC / waves      | Remi Dumont     | | Global ICRF wave solver                    |
| | (not yet in |                 |                 |                                              |
| | ETS)        |                 |                 |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| StixReDist    | IC / waves      | | Dirk          | | 1d Fokker-Planck solver for ICRF heating.  |
|               |                 | | Van Eester    |                                              |
|               |                 | | and           |                                              |
|               |                 | | Ernesto       |                                              |
|               |                 | | Lerche        |                                              |
+---------------+-----------------+-----------------+----------------------------------------------+
| ICdep         | IC / waves      | Thomas Johnson  | | Generates Waves-cpo with an IC wave field  |
|               |                 |                 | | with Gaussian deposition profiles          |
|               |                 |                 | | described by a combination of antenna-cpo  |
|               |                 |                 | | input and through code parameters input.   |
|               |                 |                 | | Code-parameter documentation can be found  |
+---------------+-----------------+-----------------+----------------------------------------------+
| ICcoup        | IC / coupling   | Thomas Johnson  | | Simple model for the coupling waves from   |
|               |                 |                 | | ion cyclotron antennas to the plasma.      |
|               |                 |                 | | Code-parameter documentation can be found  |
+---------------+-----------------+-----------------+----------------------------------------------+

.. _ETS_A_4.10b_list_actors_events:

Events actors
-------------

.. Table

+--------------------+-------------------+-----------------+-----------------------------------------------+
| Code name          | Code Category     | Contact persons | Short description                             |
+====================+===================+=================+===============================================+
| pelletactor        | pellet            | Denis Kalupin   |                                               |
+--------------------+-------------------+-----------------+-----------------------------------------------+
| pellettrigger      | pellet            | Denis Kalupin   |                                               |
+--------------------+-------------------+-----------------+-----------------------------------------------+
| sawcrash_slice     | sawteeth          | Olivier Sauter  |                                               |
+--------------------+-------------------+-----------------+-----------------------------------------------+
| sawcrit            | sawteeth          | Olivier Sauter  |                                               |
+--------------------+-------------------+-----------------+-----------------------------------------------+
| runaway_indicator  | runaway           | Roland Lohneroch| | Indicating the presence of runaway          |
|                    |                   | Gergo Pokol     | | electrons:                                  |
|                    |                   |                 | | 1) Indicate, whether electric field is      |
|                    |                   |                 | | below the critical level, thus runaway      |
|                    |                   |                 | | generation is impossible.                   |
|                    |                   |                 | | 2) Indicate, whether runaway electron       |
|                    |                   |                 | | growth rate exceeds a preset limit. This    |
|                    |                   |                 | | calculation takes only the Dreicer runaway  |
|                    |                   |                 | | generation method in account and assumes a  |
|                    |                   |                 | | velocity distribution close to Maxwellian,  |
|                    |                   |                 | | therefore this result should be considered  |
|                    |                   |                 | | with caution. The growth rate limit can be  |
|                    |                   |                 | | set via an input of the actor. Limit value  |
|                    |                   |                 | | is set to \\( 10^{12} \\) particle per      |
|                    |                   |                 |   second by default.                          |
|                    |                   |                 | | (This growth rate generates a runaway       |
|                    |                   |                 | | current of approximately 1kA considering a  |
|                    |                   |                 | | 10 seconds long discharge.)                 | 
+--------------------+-------------------+-----------------+-----------------------------------------------+


Non-physics actors
------------------

The ETS uses the following list of non-physics actors: addECant,
addICant, backgroundtransport, calculateRHO, changeocc, changepsi,
changeradii, checkconvergence, controlAMIX, coredelta2coreprof,
correctcurrent, deltacombiner, emptydistribution, emptydistsource,
emptywaves, eqinput, etsstart, fillcoreimpur, fillcoreneutrals,
fillcoreprof, fillcoresource, fillcoretransp, fillequilibrium,
fillneoclassic, filltoroidfield, gausiansources, geomfromcpo,
hcd2coresource, ignoredelta, ignoreimpurity, ignoreneoclassic,
ignoreneutrals, ignorepellet, ignoresources, ignoretransport, IMP4dv,
IMP4imp, importimptransport, itmimpurity, itmneutrals,
merger4distribution, merger4distsource, merger4waves, nbifiller,
neoclassic2coresource, neoclassic2coretransp, parabolicprof,
plasmacomposition, PowerFromArray, PowerModulation, profilesdatabase,
readjustprof, sawupdate_slice, scaleprof, sourcecombiner,
sourcedatabase, transportcombiner, transportdatabase, wallFiller and
waves2sources. 

   
<<<<<<< HEAD
*INTERPRETATIVE* means that the ETS will not update the equilibrium,
instead it will be using the initial equilibrium.

Please note, that it is better to select the same code as you used for
pre-iterrations. Because outputs of different equilibrium solver are not
necessary done with the same resolution. Therefore the routine saving
the information to the data base might brake due to uncompatible sizes
of some signals.

.. figure:: images/ets_eq4_a.png
   :align: center

.. _ETS_A_4.10a_transport:

Transport
---------

The settings for TRANSPORT can be done inside the CONVERGENCE LOOP
composite actor. Therefore please do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Open actor’
-  right click on the box ‘TRANSPORT’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit
   
.. figure:: images/ets_transport1_a.png
   :align: center

   
Choice of transport model
~~~~~~~~~~~~~~~~~~~~~~~~~

ETS constructs the total transport coefficients from the combination of
Anomalous transport (model choice), Neoclassical transport (model
choice) and Database transport (transport coefficients be saved to the
input shot)

.. code-block:: console

   D_tot = D_DB*M_DB + D_AN*M_AN + D_NC*M_NC 

You should choose from the list of evailable models in each cathegory or
switch it OFF

The list of available transport models can be found
`here <https://www.eufus.eu/documentation/EU-IM/html/ets_status.html>`__.

.. figure:: images/ets_transport2_a.png
   :align: center

Main plasma transport
~~~~~~~~~~~~~~~~~~~~~

In this section you define how total transport coefficients for main
ions should be constructed from contributions provided by different
models. You need to provide the multipliers for Anomalous, Neoclassical
and Database contributions, which will determine their weights in total
transport coefficient.

You also can add the constant background level for each coefficient (ion
coefficients are expected to be the string {1:NION}, separated by
commas)

.. figure:: images/ets_transport3_a.png
   :align: center

Impurity transport
~~~~~~~~~~~~~~~~~~

In this section you define how total transport coefficients for impurity
ions should be constructed from contributions provided by different
models. You need to provide the multipliers for Anomalous, Neoclassical
and Database contributions, which will determine their weights in total
transport coefficient.

You also can add the constant background level for each coefficient
(coefficients are expected to be the string {1:NIMP}, separated by
commas)

In addition, there is an option to import the Anomalous component of
transport coefficient *from_first_ion* or *from_electrons* (the same
anomalous contribution will be added to all impurity components, all
ionization states)

.. figure:: images/ets_transport4_a.png
   :align: center

Edge transport barrier
~~~~~~~~~~~~~~~~~~~~~~

In this section you can artificially supress the transport outside of
specified *RHO_TOR_NORM_ETB*. Total transport coefficients for all
transport channels (ne, ni, nz, Te, Ti,...) will be reduced to constant
values specified below (ion and impurity coefficients are expected to be
the strings {1:NION}) and {1:NIMP} respectively)

.. figure:: images/ets_transport5_a.png
   :align: center

Total transport coefficients
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Profiles of the total transport coefficient for each channel are
obtained from the the individual contributions (Data Base, Anomalous,
Neoclassical and Background) as a summ of all activated transport models
multiplied with coefficients specified on the interface of the composite
actor.

.. code-block:: console

   X_tot = X_DB*DBM + X_AN*ANM + X_NC*NCM + X_BG*BGM  

!!! Note, that contributions to all transport equations will be
multiplied with the same value. For example: if
AnomalousTransportMultiplier=3.0, then contibutions from selected
anomalous transport model to each transport equation will be multiplied
with 3.0

The fine tuning of of transport coefficients can be done through editing
the XML code parameters of the transport combiner actor:

-  right click on the box ‘TRANSPORT’
-  select ‘Open actor’ to edit settings
-  right click on the box ‘Transport Combiner’
-  select ‘Open actor’ to edit settings
-  right click on the box ‘transportcombiner’
-  select ‘Configure actor’
-  click ‘Edit Code Parameters’
-  If you select *OFF* contributions from all transport models to this
   channel will be nullified; If you select *from_input_CPOs* the
   transport channel will be activated, and the total transport
   coefficient will be combined from active tranport models; For
   convective velocity there is an additional option
   *fixed_V_over_D_ratio*, by selecting this the combiner will ignore
   the convective components provided by transport nmodels. The
   convective velocity will be determined from the total diffusion
   coefficient by applying fixed V/D ratio (*for inward pinch the values
   should be negative!*). For all active channels you can adjust
   multipliers for combining contributions from different transport
   models (array of four space separated values is expected):

   -  first position - Data Base transport coefficients;
   -  second position – Anomalous transport coefficients;
   -  third position – Neoclassical transport coefficients;
   -  fourth position – Background (constant level) transport
      coefficients;

-  save and exit
-  Commit
   
.. figure:: images/ets_transport5_a.png
   :align: center
   
.. _ETS_A_4.10a_mhd:

MHD
---

The settings for MHD type of events can be done inside the CONVERGENCE
LOOP composite actor. Therefore please do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Open actor’
-  right click on the box ‘MHD’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit

.. figure:: images/ets_mhd_a.png
   :align: center

At the moment ETS allows only for NTM to be activated. 

User can ajust the following NTM settings:

-  NTM –
   ON
   means that ETS will add the NTM driven transport to the total
   transport coefficient;
   OFF-ignored
-  NTMTransportMultiplier – the transport contrinution from NTM will be
   multiplied with this value
-  Onset_NTM_time - activation time for the NTM mode
-  Onset_NTM_width - starting width of the mode
-  m_NTM_poloidal_number
-  n_NTM_toroidal_number
-  NTM_phase
-  NTM_frequency

.. figure:: images/ets_mhd2_a.png
   :align: center   

.. _ETS_A_4.10a_sources:

Sources and impurity
--------------------

The settings for SOURCES AND IMPURITY can be done inside the CONVERGENCE
LOOP composite actor. Therefore please do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Open actor’
-  right click on the box ‘SOURCES AND IMPURITY’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit
   
.. figure:: images/ets_sources1_a.png
   :align: center


IMP3 sources
~~~~~~~~~~~~

There is a number of sources developed by IMP3 project, which are actors
or internal routines of the transport solver. You can activate them by
selecting *ON / OFF* in front of corresponding source:

-  Database Sources –
   ON
   - ETS will pick up the evolution of source profiles saved to your
   input shot/run;
   OFF -ignored
-  Ohmic Heating –
   ON
   - ETS will compute Ohmic heating internaly;
   OFF-ignored
-  Gaussian Sources –
   ON
   - ETS will add sources from the Gaussian source actor (you can
   configure heat and particle deposition profiles by editing the code
   parameters of the actor);
   OFF-ignored
-  Neutral Sources–
   ON
   - Fluid neutrals will be solved according to the boundary conditions
   specified on ¨Before_time_evolution¨ composite actor interface;
   OFF -ignored
-  Switch_IMPURITY–
   ON
   - Impurity density and radiative sources will be computed;
   OFF
   -ignored;
   INTERPRETATIVE
   – profiles of impurity density will be read from input shot/run
   
.. figure:: images/ets_sources2_a.png
   :align: center
   

IMP5HCD sources
~~~~~~~~~~~~~~~

There is a number of sources developed by IMP5 project, that are
incorporated by the ETS workflow.

For the IMP5HCD sources please activate the type of heating source, by
ticking the box in front of it, and select the code to simulate it.

.. figure:: images/ets_sources3_a.png
   :align: center

You also need to configure initial IMP5HCD settings. Therefore please:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Open Actor’
-  right click on the box ‘SETTINGS FOR HEATING AND CURRENT DRIVE’
-  select ‘Configure actor’
-  edit the stettings
-  Commit
   
.. figure:: images/ets_sources4_a.png
   :align: center
 
The detailed information on initial IMP5HCD settings can be found
`here <https://www.eufus.eu/documentation/EU-IM/html/imp5_imp5hcd.html>`__.
Please note that settings for NBI are done independent for each PINI.
Therefore, for NBI settings, please insert the values separated by
commas. The number of the element in the array corresponds to the number
of activated PINI. Maximum accepted number of PINIs = 16.

.. figure:: images/ets_sources5_a.png
   :align: center

Power control
~~~~~~~~~~~~~

You also can activate the power control for the IMP5HCD sources.

.. figure:: images/ets_sources6_a.png
   :align: center

If the POWER_CONTROL is not *OFF*, there are two modes of
operation:\ *specific* and *frequency*

For *specific* you should specify the time sequence separated by commas
and the corresponding power sequence (where first power level
corresponds to the first time, second to second and etc.). Linear
interpolation will be done between the sequence points. For example: if
you give the power sequence = 2e6,4e6,1e6 and times = 0.0, 0.7, 1.5 (s)
the delivered power would be:

.. figure:: images/ets_sources7_a.png
   :align: center

For *frequency* you should specify the power levels sequence separated
by commas, start and end time of the power control and the frequency of
switching between these levels. For example: if you give the power
sequence = 2e6,4e6,1e6 and frequency = 10 (Hz) tstart =0.0 (s) tend =
1.5 (s) the delivered power would be:

.. figure:: images/ets_sources8_a.png
   :align: center

Total power
~~~~~~~~~~~

Profiles of the total source for each channel are obtained from the the
individual contributions (Data Base, Gaussian, Neutrals, Impurity and
HCD) as a summ of all activated sources multiplied with coefficients
specified on the interface of the composite actor.

::

   S_tot = S_DS*DSM + S_GS*GSM + S_Neu*NeuSM + S_IMP*IMPSM + S_HCD*HCDSM 

!!! Note, that contributions to all transport equations will be
multiplied with the same value. For example: if
ImpuritySourceMultiplier=3.0, then contibutions from impurity to Se, Sz
and Qe will be multiplied with 3.0

The fine tuning of of sources can be done through editing the XML code
parameters of the source combiner actor:

-  right click on the box ‘SOURCES and IMPURITY’
-  select ‘Open actor’ to edit settings
-  right click on the box ‘Source Combiner’
-  select ‘Open actor’ to edit settings
-  right click on the box ‘sourcecombiner’
-  select ‘Configure actor’
-  click ‘Edit Code Parameters’
-  If you like the sources to the particular equation being activated -
   select *from_input_CPOs*; if you select *OFF* contributions from all
   sources to this channel will be nullified. For active channels you
   can adjust multipliers for combining contributions from different
   source modules (array of five space separated values is expected):

   -  first position - Data Base sources;
   -  second position – Gaussian sources;
   -  third position – HCD sources;
   -  fourth position – Neutral sources;
   -  fifth position – Impurity sources.

-  save and exit
-  Commit
   
.. figure:: images/ets_sources9_a.png
   :align: center

.. _ETS_A_4.10a_inst_events:

Instantaneous events
--------------------

At the moment, user can swith ON and OFF two types of events: PELLET and
SAWTOOTH

Pellet
~~~~~~

At the top level of the workflow you can configure times for pellet
injection

-  right click on the box ‘INSTANTANEOUS EVENTS’
-  select ‘Configure actor’ to edit settings
-  Select Pellet_injection ‘ON’ if you like to use pellet in your
   simulation
-  Select mode of operation: ‘specific’ - pellets will be shut at
   specific times, you also need to specify array ‘times_pellet’

   -  ‘specific’ - pellets will be shut at exact times specified in
      array ‘times_pellet’
   -  ‘frequency’ – pellets will be shut from ‘tstart_pellet’ until
      ‘tend_pellet’ with a ’frequency_pellet’

-  ‘frequency’ – pellets will be shut from ‘tstart_pellet’ until
   ‘tend_pellet’ with a ’frequency_pellet’
-  Commit

.. figure:: images/eps_instantaneous_events_a.png
   :align: center

Parameters of individual pellet need to be configured through the
icode_parameters of the PELLET actor. To access it go to 'Outline' on
the right upper corner and open the following:

.. figure:: images/eps_instantaneous_events2_a.png
   :align: center

-  right click on the actor ‘PELLET’
-  select ‘Configure actor’
-  click ‘Edit Code Parameters’
-  edit parameters and click ‘save and exit’
-  Commit

.. figure:: images/eps_instantaneous_events3_a.png
   :align: center

*amn* – atomic mass number: array of elements separated by space
(1:nelements) [-]

*zn* – nuclear charge: array of elements separated by space
(1:nelements) [-]

*fraction* – fraction of each element in the pellet, based on the number
of atoms: array of elements separated by space (1:nelements) [-]

*rpell* – radius of the pellet [m]

*vpell* – velocity of the pellet [m/s]

*rcloud* – radius of the pellet cloud [m], radial extension of the cloud
= 2*rp0

*lcloud* – length of the pellet cloud along the field line [m]

*Tcloud* – temperature of the pellet cloud [eV]

Pellet path is specified by two points, for which R and Z coordinated
should be specified

*R* – R coordinates of the pivot and second points of the pellet path,
separated by space [m]

*Z* – Z coordinates of the pivot and second points of the pellet path,
separated by space [m]

Control switches allow to activate:

-  drifts
   - YES - will activate radial displacement of deposition profile, same
   for all path points
-  cooling
   - YES - will activate cooling of the other side of the plasma due to
   parallel heat transport (essential for large pellets, which might
   cross the same flux surface twice)
-  JINTRAC
   - YES - will provide temperature reduction consistent with the model
   used in JETTO

MHD
~~~

At the top level of the workflow you can switch ON/OFF possible MHD
events

-  right click on the box ‘INSTANTANEOUS EVENTS’
-  select ‘Configure actor’ to edit settings
-  Select SAWTOOTH ‘ON’ if you like to use them in your simulation
-  Commit

.. _ETS_A_4.10a_visualization:

Visualization during the run
----------------------------

There is a number tools visualizing the ETS run.

Multiple Tab Display
~~~~~~~~~~~~~~~~~~~~

The display appeares automaticaly when the ETS workflow is launched. It
displays diagnostic text messages from the workflow on following topics:

-  Input data statement
-  Iterations to check the initial convergence between EQUILIBRIUM and
   CURRENT
-  Time evolution
-  Convergence of iteratinos within the time step
-  IMP5HCD settings
-  Power used by IMP5HCD actors durung the run

Also the error messages from execution of the workflow will be displayed
here.

.. figure:: images/ets_visual1_a.png
   :align: center

Python Visualization Display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can activate the graphical visualization of your run evolution:

-  right click on the box ‘Check Time & Save Slice’
-  select ‘Configure actor’
-  select visualisation ‘YES’ or ‘NO’
-  Commit

.. figure:: images/ets_visual2_a.png
   :align: center

Then evolution of main discharge parameters will be shown in this
window:

.. figure:: images/ets_visual3_a.png
   :align: center

.. _ETS_C_KEPLER:

=====
ETS_C
=====

The ETS workflow (IMP3-ACT1) is used for 1-D transport simulation of a
tokamak core plasma.

**ETS workflow in KEPLER**:

-  uses as actors and composite actors from other IMPs, thus for the
   most recent versions of them please check with relevant project
-  complex, but clearly structured workflow, which offers user friendly
   interface for configuring the simulation
- allows for easy modifications (connecting new modules, or reconnecting
   the parts of the workflow) through the easy graphical interface
-  provides users with all updates through the version control system
-  still actively developing tool



.. figure:: images/ets_c.png
   :align: center

.. _ets_status:


==========
ETS Status
==========

+-----------------------+-----------------------+------------------------+
| | *Package Name* /    |       ETS-A           |       ETS-C            |
| | *Physics Module*    |                       |                        |
+=======================+=======================+========================+
| *EQUILIBRIUM*         |                       |                        |
+-----------------------+-----------------------+------------------------+
| *fixed boundary:*     |                       |                        |
+-----------------------+-----------------------+------------------------+
| BDSEQ                 | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| EMEQ                  | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| SPIDER                | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| SPIDER_IMP12          | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| CHEASE                | Ready for use         | validate               |
+-----------------------+-----------------------+------------------------+
| HELENA                | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| HELENA21              |                       | | work in 4.09a problem|
|                       |                       | | when it doesn't find |
|                       |                       | | any equilibrium crash|
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *free boundary:*      |                       |                        |
+-----------------------+-----------------------+------------------------+
| CEDRES++              | | In progress/tests   | | validate (static     |
|                       | | are planned for     | | mode, TBD evolution  |
|                       | | Nov.2014            | | mode)                |
+-----------------------+-----------------------+------------------------+
| CREATE-NL             |                       |                        |
+-----------------------+-----------------------+------------------------+
| FIXFREE               |                       |                        |
+-----------------------+-----------------------+------------------------+
| EQFAST                |                       | work in 4.09a          |
+-----------------------+-----------------------+------------------------+
| FREEBIE               |                       | validate               |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *MHD*                 |                       |                        |
+-----------------------+-----------------------+------------------------+
| NTM                   | Ready for use         | validate               |
+-----------------------+-----------------------+------------------------+
| SAWTEETH              | | Implemented/Tested/ |                        |
|                       | | release             |                        |
|                       | | date:Nov.2014       |                        |
+-----------------------+-----------------------+------------------------+
| | Linear Stability    | | Stand alone         |                        |
| | Chain               | | tests/implementation|                        |
|                       | | in ETS and          |                        |
|                       | | release:2015        |                        |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *TRANSPORT*           |                       |                        |
+-----------------------+-----------------------+------------------------+
| | *analytical &*      |                       |                        |
| | *interpretative:*   |                       |                        |
+-----------------------+-----------------------+------------------------+
| | From DATA BASE      | Ready for use         |                        |
| | (interpretative)    |                       |                        |
+-----------------------+-----------------------+------------------------+
| | Edge Transport      | Ready for use         |                        |
| | Barried (analytical)|                       |                        |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *anomalous:*          |                       |                        |
+-----------------------+-----------------------+------------------------+
| ETAIGB                | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| BOHM-GYROBOHM         | Ready for use         | | validate, + effect of|
|                       |                       | | rotation             |
+-----------------------+-----------------------+------------------------+
| GLF23                 | | Implemented/Tested/ | | to be tested (GLF23  |
|                       | | release             | | installed in previous|
|                       | | date:Nov.2014       | | gateway not          |
|                       |                       | | validated)           |
+-----------------------+-----------------------+------------------------+
| WEILAND               | | Implemented/Tested/ |                        |
|                       | | release             |                        |
|                       | | date:Nov.2014       |                        |
+-----------------------+-----------------------+------------------------+
| REU-IM                | | Implemented/Tested/ |                        |
|                       | | release             |                        |
|                       | | date:Nov.2014       |                        |
+-----------------------+-----------------------+------------------------+
| EWDM                  | | Implemented/Tested/ |                        |
|                       | | release             |                        |
|                       | | date:Nov.2014       |                        |
+-----------------------+-----------------------+------------------------+
| TGLF                  | | In progress/Some    |                        |
|                       | | initial tests       |                        |
+-----------------------+-----------------------+------------------------+
| KIAUTO                |                       | | installed (transport |
|                       |                       | | model based on       |
|                       |                       | | scaling law)         |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *neoclassical:*       |                       |                        |
+-----------------------+-----------------------+------------------------+
| NEOS                  | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| NEOWES                | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| NEOART                | | Ready for use       |                        |
|                       | | (probably not       |                        |
|                       | | suggested as being  |                        |
|                       | | too oscilatory)     |                        |
+-----------------------+-----------------------+------------------------+
| NCLASS                | In progress           | | validate with        |
|                       |                       | | composition (to be   |
|                       |                       | | upgrade with         |
|                       |                       | | compositions         |
+-----------------------+-----------------------+------------------------+
| NCLASS/FORCEBALL      |                       | | installed (gives the |
|                       |                       | | radial electric      |
|                       |                       | | field)               |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| | *HEAT,PARTICLE*     |                       |                        |
| | *SOURCES & CURRENT* |                       |                        |
| | *DRIVE*             |                       |                        |
+-----------------------+-----------------------+------------------------+
| | *analytical &*      |                       |                        |
| | *interpretative:*   |                       |                        |
+-----------------------+-----------------------+------------------------+
| | From DATA BASE      | Ready for use         |                        |
| | (interpretative)    |                       |                        |
+-----------------------+-----------------------+------------------------+
| Gaussian              | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| | *impurity and*      |                       |                        |
| | *particles:*        |                       |                        |
+-----------------------+-----------------------+------------------------+
| IMPURITY              | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| NEUTRALS              | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| PELLET                | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| ZNEUTRES              |                       | | installed (simple    |
|                       |                       | | module of CRONOS for |
|                       |                       | | neutral source terms)|
+-----------------------+-----------------------+------------------------+
| ZRECYCLE              |                       | | edge boundary for    |
|                       |                       | | electron density     |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *ECRH*                |                       |                        |
+-----------------------+-----------------------+------------------------+
| GRAY                  | Ready for use         | Installed              |
+-----------------------+-----------------------+------------------------+
| TORAY-FOM             |                       | In preparation         |
+-----------------------+-----------------------+------------------------+
| TRAVIS                | Tested                | In preparation         |
+-----------------------+-----------------------+------------------------+
| TORBEAM               |                       | In preparation         |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *ICRH*                |                       |                        |
+-----------------------+-----------------------+------------------------+
| TORIC                 | In progress           | In preparation         |
+-----------------------+-----------------------+------------------------+
| ICDEP                 |                       | Installed              |
+-----------------------+-----------------------+------------------------+
| FPSIM                 |                       | Installed              |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *NBI*                 |                       |                        |
+-----------------------+-----------------------+------------------------+
| NEMO                  | Ready for use         | Installed              |
+-----------------------+-----------------------+------------------------+
| BBNBI                 | Ready for use         | In preparation         |
+-----------------------+-----------------------+------------------------+
| NBISIM                | Ready for use         | Installed              |
+-----------------------+-----------------------+------------------------+
| ASCOT                 | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| RISK                  | Ready for use         | In preparation         |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *LH*                  |                       |                        |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *nuclear sources*     |                       |                        |
+-----------------------+-----------------------+------------------------+
| nuclearsim            | Ready for use         | Installed              |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *CONTROLS*            |                       |                        |
+-----------------------+-----------------------+------------------------+
| NBI power control     | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| ECRH power control    | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| ICRH power control    | Ready for use         |                        |
+-----------------------+-----------------------+------------------------+
| | Pellet frequency    | Ready for use         |                        |
| | control             |                       |                        |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| *COUPLING TO EDGE*    |                       |                        |
+-----------------------+-----------------------+------------------------+
| SOLPS                 | | Tested at Fortran   |                        |
|                       | | level               |                        |
+-----------------------+-----------------------+------------------------+
|                       |                       |                        |
+-----------------------+-----------------------+------------------------+
| | *DOCUMENTATION and* |                       |                        |
| | *MANUALS*           |                       |                        |
+-----------------------+-----------------------+------------------------+
| Physics Description   | | Description of the  |                        |
|                       | | ETS                 |                        |
+-----------------------+-----------------------+------------------------+
| Numerics Description  | | Form of the         |                        |
|                       | | standardize         |                        |
|                       | | equations           |                        |
+-----------------------+-----------------------+------------------------+
| Manuals               | | -  ETS workflows in |                        |
|                       | |    KEPLER           |                        |
|                       | | -  ETS source in    |                        |
|                       | |    Fortran          |                        |
+-----------------------+-----------------------+------------------------+



.. _imp4_transport:

*********************************************
Turbulent Flux Quantities in Transport Models
*********************************************

Overview
========

In conventional transport modelling, all quantities appearing in the
equations are 1-D, in some radial coordinate (poloidal flux, normalised
radius, etc). In general any monotonic radial coordinate is acceptable.
In the TF-EU-IM, the toroidal flux radius is standard. All we need from
the radial coordinate is the transformation to get to :math:`V,` the
volume enclosed by the flux surface, which is fundamental to the
governing equations, which are conservation laws.

What we have to do is to take a measured result, which is a
time-averaged fluctuation-based transport flux and turn it into 1-D
quantities suitable to modelling. This is done using the flux surface
average, explained in conventions. The transport equations themselves
constitute a mean field approximation to the 3-D conservation laws. For
the fundamentals encountered in transport modelling see R Hazeltine and
J Meiss, Plasma Confinement (Addison-Wesley, 1992) chapter 8. For the
special properties of transport driven by small-scale pressure driven
ExB microturbulence see B Scott, "The character of transport caused by
ExB drift turbulence," Phys Plasmas 10 (2003) 963-976.

For ambipolarity we follow the rules for dynamical alignment, which
follows the physics of how electron fluctuations determine the ExB
velocity fluctuations, which then advect all species. Magnetic flutter
nonlinearities act independently of this, but in our modelling they are
used solely for heat fluxes since the averaged particle transport due to
magnetic flutter and the current cancels, leaving the parallel ion
velocity which we neglect for this purpose. The reference for dynamical
alignment is B Scott, "Dynamical alignment in three species tokamak edge
turbulence," Phys Plasmas 12 (2005) 082305.

Note: there are now auxiliary actors provided for this purpose: IMP4DV,
which does the D/V conversion and enforces ambipolarity assuming absence
of impurities, and IMP4imp, which subsequently enforces ambipolarity for
the set of main ion and impurity species. The IMP4DV actor should be
invoked directly after the transport model actor in the workflow chain,
if the model produces only fluxes or if the coefficients have to be
modified with the flux given. Ambipolarity is done using IMP4imp if the
coreimpurity CPO is used in the workflow. These auxiliary actors are
described on the `auxiliary actors page. <#imp4_aux_actors>`__

Particle Flux as an Example
===========================

The mean field equation governing particle balance is the transport
equation for electrons,

.. math::
   
   {\partial \over \partial t} \langle n \rangle + \langle \vec \nabla \cdot \widetilde n \vec {\widetilde v}_E \rangle = S
  
in which the tilde symbol over the n and v denotes fluctuating quantities
and we neglect all transport processes except ExB eddy diffusion. The ExB
velocity is given by

.. math::
   
   \vec v_E = {c \over B^2} \vec B \times \vec \nabla \phi

where :math:`\phi` is the electrostatic potential.

The angle brackets denote the flux surface average, and we will use the
property that the flux surface average of a divergence of a vector is
the volume derivative of the flux surface average of a contravariant
volume component of the vector, in this case

.. math::

   \langle \vec \nabla \cdot \vec \Gamma \rangle = {\partial \over \partial V} \langle \Gamma^V \rangle

where :math:`\Gamma` is the particle flux whose flux-surface averaged volume component is

.. math::

   \langle \Gamma^V \rangle = \langle \widetilde n \widetilde v_E^V \rangle

This is converted to expression in terms of the radial coordinate \(
\rho` using the fact that both :math:`V` and :math:`\rho` are flux
quantities whose gradients are parallel to each other. We have

.. math::
   {\partial \over \partial V} = {1 \over V'_\rho}{\partial \over \partial \rho}\qquad \Gamma^\rho = {1\over V'_\rho}\Gamma^V \qquad V'_\rho = {\partial V \over\partial \rho} \qquad g^{VV} = (V'_\rho)^2 g^{\rho\rho}

so we can write the transport equation as

.. math::
   
   {\partial n \over \partial t}+{1 \over V'_\rho}{\partial \over \partial \rho}V'_\rho \langle \Gamma^\rho \rangle = S,

where we have replaced :math:`\langle n \rangle` with :math:`n` following the assumptions of the 1-D version of mean field transport theory.

With all quantities now expressed in terms of flux quantities, we are
free to characterise the transport flux :math:`\langle \Gamma^\rho \rangle`
in an arbitrary way, so long as only flux quantities appear. The
flux expansion within the flux surface as well as expansion or
contraction of surfaces of constant :math:`\rho` is treated using the
metric coefficient :math:`g^{ \rho \rho}` which is dimensionless. This way
we can characterise transport in terms of an effective diffusivity and
an effective frictional slip velocity which are given in SI units. By
convention both of these are done solely via :math:`g^{ \rho \rho}` for
convenience, also reflecting that the effective velocity is actually
marking off-diagonal diffusive elements. Our convention for this follows
the ETS code and is given by

.. math::
   
   \langle \Gamma^\rho \rangle = \langle g^{\rho \rho} \rangle \left( n V_{{\rm eff}} - D_{{\rm eff}}{\partial n\over \partial \rho} \right) 

So despite the special spatial distribution of any particular transport
process (ie, the underlying instability or nonlinear free energy access),
the flux-surface averaged flux itself and its expression in terms of
diffusion and frictional slip are identical characterisations.

Metric Coefficients
===================

Transport modellers want the Ds and Vs as physical quantities in SI
units. In general the fluxes are (magnetic) flux surface averaged
quantities, which implies the existence of metric elements in the
conversion. In our case we need :math:`\langle g^{\rho \rho} \rangle`
where :math:`\rho` is the toroidal flux radius in meters, so the metric
elements are dimensionless. In the equilibrium CPO, this is gm3 under
equilibrium%profiles_1d in the structure.

Note this is different from the ASTRA code which casts the Vs as proper
velocities, i.e., with one factor of grad-rho given by :math:`\langle
\sqrt{g^{\rho \rho}} \rangle` which is gm7 under
equilibrium%profiles_1d in the structure. The units are the same and the
informational content is the same, but this difference has to be taken
into account in any transport modelling and benchmarking.

Heat Fluxes
===========

The heat flux is treated in a similar way, with transport equation

.. math::
   
   {3 \over 2}{\partial p_e \over \partial t} +{1 \over V'_\rho}{\partial \over \partial \rho} V'_\rho \langle q_e^\rho \rangle = Q_e + \sum_{{\rm ions}}T_{ei},

for electrons, with :math:`T_{ei}` giving the species transfer and :math:`Q_e`
the source. For ExB transport the heat flux has a advective (also
called convective) and a conductive piece given by

.. math::
   
   q_E = q_E{}_{{\rm cond}} + (3/2) T \Gamma_E

which appears with a 3/2 due to the Poynting cancellation. For
magnetic flutter transport the advective piece appears with the usual
factor,

.. math::
   
   q_m = q_m{}_{{\rm cond}} + (5/2) T \Gamma_m

Here the forms are given for each species and :math:`E` and :math:`m` refer
to the ExB eddy and magnetic flutter channels, respectively. For reasons
given below we are neglecting the magnetic flutter piece :math:`\Gamma_m`
for the time being, and then the flutter piece merely adds to the heat
diffusivity.

The forms of these due to the fluctuations are then

.. math::
   
   \langle q^\rho \rangle = (3/2) \langle \widetilde p \widetilde v_E^\rho \rangle + \langle \widetilde q_\parallel \widetilde b^\rho \rangle

which breaks into advective and conductive pieces according to linearisation
of the pressure fluctuations

.. math::

   \langle q_{{\rm cond}}^\rho\rangle = (3/2) n \langle \widetilde T \widetilde v_E^\rho\rangle + \langle \widetilde q_\parallel \widetilde b^\rho\rangle \qquad\qquad \langle q_{{\rm adv}}^\rho \rangle = (3/2)T \Gamma = (3/2)T\langle\widetilde n \widetilde v_E^\rho \rangle

hence the density fluctuation piece is accounted for by the particle flux.
Neglect of the magnetic flutter advective piece (and particle flux) is the
same as neglect of the :math:`{\widetilde u_\parallel} {\widetilde b^ \rho}` nonlinearity (in the delivery of the results, not in the turbulence
computations themselves).

The total conductive flux is then represented by

.. math::
   
   \langle q_{{\rm cond}}^\rho \rangle = \langle g^{\rho \rho} \rangle \left( nTY_{{\rm eff}} - n \chi_{{\rm eff}}{\partial T \over \partial \rho} \right)

with :math:`\chi` and :math:`Y` giving the heat diffusion and frictional
slip pieces for each species, respectively (these are in diff_eff and
vconv_eff in the CPO for each quantity).

Operationally, the turbulence module communicates the diff_eff and
vconv_eff due to each transport channel for each species to the
transport solver, and the metric coefficients are used by both modules.
The two modules can be on arbitrarily different grids, which communicate
through standard interpolation. This despite the fact that transport at
the micro-level is angle dependent (in general, it can be 3-D in the
time average if the sources are 3-D). The effective transport is 1-D so
long as parallel sound transit within the flux surface remains fast
compared to the local transport time. This breaks down anyway in the
edge, so the fact that the volume is a problematic coordinate and the
flux surface average is a problematic operation on open field lines
doesn't enter.

Ds and Vs from Turbulence Codes to Transport Solvers
====================================================

To serve the results from turbulence codes to transport solvers, we have
to turn the fluxes (results) into diffusivities and effective velocities
(coefficients, Ds and Vs for short), which represent more information
than is at hand. Transport solvers must work with Ds and Vs because they
use implicit schemes. The matrix must be diagonally dominant; hence one
cannot simply use the Vs. Fluxes which are zero and/or negative should
be given with positive diffusivities for the solvers to work. We need a
set of rules to provide this.

Considering the particle and heat transport fluxes for a given species,
we convert the gradient in to a logarithmic derivative and express the
flux in terms of a specific flux, which has units of velocity,

.. math::
   
   F &= \frac{1}{n} \langle g^{\rho\rho}\rangle^{-1} \langle \Gamma^\rho \rangle= V_{{\rm eff}} - D_{{\rm eff}}\frac{\partial \log n}{\partial \rho}\\
   G &= \frac{1}{nT} \langle g^{\rho \rho} \rangle^{-1} \langle q^\rho_{{\rm cond}}\rangle = Y_{{\rm eff}} - \chi_{{\rm eff}}\frac{\partial \log T}{\partial \rho} 

wherein the conductive part of the heat flux (without the :math:`3 \Gamma / 2` enters.

The choice of what to do with the Ds and Vs is somewhat arbitrary. The
needs of implicit transport solvers is for a positive D regardless of
the value or sign of either flux. We decide this by putting a limit on
the effective Prandtl number or its inverse: the larger specific flux is
taken to be entirely diffusive, with the effective velocity set to zero.
Furthermore, to address cases with very small or negative gradients, we
use proxy variables for the scale lengths to calculate the provisional
diffusivities before using the Prandtl number limitation to turn these
into actual diffusivities. Finally, the rest of the flux is asigned to
the effective velocity, so that the D and V formula reflects the actual
specific flux.

The Prandtl number limitation is expressed as follows. If the smaller
specific flux is within a factor of 5 of the larger, then both are
purely diffusive and the effective velocities are both zero. If not,
then the D ratio is set to 5, with the result that the smaller D, having
been corrected, is accompanied by the corresponding V, which is now
nonzero. The specific flux with the larger D will be returned with a V
which is zero.

The rationale is that the turbulent mixing by the ExB velocity affects
all processes, but that linear forcing can shift the average phase shift
of the fluctuations such that the effective flux can be small or
negative. The simplest example is adiabatic electrons, for which the ion
heat flux is robust but the particle flux is zero. In most situations
the specific heat flux will be the larger, and hence the familiar
situation is that of a D and V for the particle flux but a D (the chi)
only for the conductive heat flux.

The full algorithm starting with the specific fluxes appears as

.. math::
   
   L_n^{-1} &= \max \left( {1 \over R}, \left\vert {\partial \log n \over \partial \rho} \right\vert \right) \quad L_T^{-1} = \max \left( {1 \over R},\left\vert {\partial \log T \over \partial \rho} \right\vert \right)\\
   D' &=\left \vert F \right \vert L_n \quad \chi' = \left \vert G \right \vert L_T \\
   D &= \max \left( D', {1\over 5} \chi' \right) \quad \chi = \max\left( \chi', {1 \over 5} D' \right) \\
   V &= \left( F + D {\partial \log n \over \partial \rho} \right) \quad Y = \left( G + \chi \frac{\partial \log T}{\partial \rho} \right)

and all four elements are set. Note that the channels are done in parallel
except for the Prandtl correction, in which the Max's are taken
sequentially. For the provisional diffusivities, absolute values are used
to ensure positive values which are needed by transport solvers.

Note how in the end the actual gradients are used. If the gradients are
moderate then their actual values are used, and if the Prandtl
correction is not invoked, then both channels are diagonal. In any case
the full relation is used to get the effective velocities (V and Y) so
having set the rules to handle the arbitrariness of the diffusivities (D
and chi) to guarantee reasonable diagonal dominance in a transport
solver, the D's and V's agree with the fluxes themselves.

If there are more than two specific fluxes per species to consider, then
we treat each scale length separately as above and use N-way maxima in
the Prandtl correction for the N channels.

Ambipolarity
============

There remains the issue of ambipolarity of the D and V for particle
flux. For a pure singly charged plasma the ion and electron Ds and Vs
should be equal. Even if the turbulence model is gyrokinetic or
gyrofluid, in which case the gyrocenter charge density is not zero but
is equal to the generalised vorticity (polarisation), the quantities
given to a transport solver should follow the rules for a fluid
representation. However, transport modelling usually applies
ambipolarity rules to the electrons after computing the ions, while the
action of turbulence is actually the other way around: Dynamical
alignment refers to the process by which (1) electron parallel dynamics
controls the electrostatic fluctuations, then (2) the resulting ExB
velocity advects all species equally. So we correct the particle fluxes
by assuming the electrons determine the D according to the above
procedure and then (1) the fluctuations in the flux-inducing part of the
spectrum for the logarithmic densities are the same, and (2) the D's are
the same. Then the V's are solved for again, by taking

.. math::
   
   D_z = D_e = D \qquad \qquad V_z = V_e + D {\partial \log b_z \over \partial \rho} \qquad \qquad b_z = n_z/n_e

This is better than the transport modelling convention but will give them
the same information in a different way, and they will compute ambipolar
particle fluxes (radial transport of charge is zero).

Statistical Character
=====================

Turbulence has a statistical character, so convergence to a mean is not
monotonic and when within one std dev of the mean there is no further
convergence. The diffusivity for ExB turbulence is comparable to

.. math::
   
   D_E = \left. \langle (\widetilde v_E)^2 \rangle \right / \langle (\varpi)^2 \rangle^{1/2} \qquad \qquad \varpi_E = {c \over B} \nabla_\perp^2 \widetilde \phi

where :math:`\varpi_E` is the ExB vorticity fluctuation, and these angle
brackets denote the ensemble average. To get an ensemble average over a
statistical quantity in practice, one must do some sort of finite-time
running averaging.

For transport modelling, the transport coefficients derived from a
turbulence code should always be given in terms of `running exponential
averages. <#imp4_averages>`__



.. _imp4_averages:

****************************
 Running Exponential Average
****************************

Overview
========

In conventional transport modelling, turbulent fluxes are modelled in terms
of processes which are diffusive in the local relaxation sense, with the
average flux given by a diffusion coefficient and an effective pinch
velocity. The equations are of dominantly parabolic character, which means
in practice that an iterate will move monotonically towards the solution in
parameter space.

This is not the case for turbulence. Convergence is statistical, which is
something different than a diffusive relaxation. If turbulence is
stationary, it is meant only that the mean of a distribution of iterates is
stationary, not the iterates themselves. The standard deviation can be
significant, of order unity compared to the mean, of any distribution of
iterates.

This makes for a noisy signal if the output of a turbulence code is used
for transport coefficients in a workflow. A sound way to overcome the
attendant problems is to use a moving average. Even an average over a
moving window can be as noisy as the original signal, however. What works
better is a weighted average over recent past values. A method to get this
is called a running exponential average, which is essentially the same
thing as a convolution integral over an exponential memory decay times the
past signal. It turns out to be very easy to obtain this without saving
past values.

The original reference for the following is S W Roberts, "Control Chart
Tests Based on Geometric Moving Averages," Technometrics 1 (1959)
239-250, cited by all the good WWW resources, including the Wikipedia
page on Moving Averages and the NIST Statistical Handbook online.

Definition
==========

Consider a process :math:`p ( \vec u )` which is a functional of dependent
variables :math:`\vec u`. Measure :math:`p` at discrete time intervals
:math:`t_n,` with values :math:`p_n=p(t_n)` and interval length 
:math:`\tau=t_n-t_{n-1}`. The moving exponential average :math:`A_n=A(p_n)`
on the :math:`n \hbox{-th}` interval is defined as

.. math::
   
   A_n = \epsilon p_n + (1-\epsilon)A_{n-1} \qquad \qquad \hbox{with} \qquad \epsilon=\alpha \tau

in which the small parameter :math:`\epsilon` is given in terms of the interval :math:`\tau` and an inverse time constant :math:`\alpha.`

In the first instance :math:`p` is measured there is no :math:`A` so the
first value of :math:`A` is simply set to :math:`p` since it can be
assumed that the initial state for :math:`p` has persisted for infinite
previous time up to the initial time point.

Differential Equation
=====================

The equivalent differential equation is found by forming the relevant
finite difference,

.. math::
   
   A_n - A_{n-1} = \epsilon (p_n - A_{n-1})

which we can also cast as

.. math::
   
   (1-\epsilon)(A_n - A_{n-1}) = \epsilon (p_n - A_n)

Taking the limit :math:`\tau \to 0` is the same as taking :math:`\epsilon \to 0` so both of these expressions become equivalent to

.. math::
   
   {\partial A \over \partial t} = \alpha(p-A)

whose solution is given below.

Equivalence to Past-Time Convolution Integral
=============================================

The solution of the above differential equation is given by the method
of undetermined coefficients,

.. math::

   {\partial A \over \partial t} +\alpha A = \alpha p \ \ e^{-\alpha t}{\partial \over \partial t} \left( e^{ \alpha t} A \right) = \alpha p \ \ {\partial \over \partial t} \left( e^{\alpha t} A \right) = \alpha p e^{\alpha t}

We may integrate this over all past time, to find

.. math::
   
   A(t) = \int_{-\infty}^t \alpha dt' p(t') e^{-\alpha (t-t') }

This is a convolution integral over the kernel :math:`e^{-\alpha(t-t')}`
and the signal :math:`p(t')`. The time constant :math:`\alpha^{-1}` is
just the memory decay time, while if :math:`p` is constant then the
integral yields unity times :math:`p`. This is the same as the
normalisation with the :math:`(1-\epsilon)` factor in the average formula
above, which is needed since the interval is of finite size.

Hence the running exponential average is operationally the same as a memory
decay integral over past time. The elegant feature is the need to keep only
the current value of :math:`A`, as it already contains all that is needed
of the past time evolution of :math:`p`.

notes
=====

Some properties of the running exponential average and how to choose its
main time-memory parameter:

-  The :math:`(1-\epsilon)` factor is needed for normalisation
-  if :math:`p=\hbox{constant}` then :math:`A=p` for all :math:`t`
   
  -  the integral with :math:`\alpha dt'` yields unity
  -  the :math:`\epsilon` and :math:`(1-\epsilon)` factors add to unity
  -  therefore set the first value of :math:`A` to the first value of :math:`p`

-  in choosing the memory decay time :math:`\alpha^{-1} \dots`
   
  -  one should have :math:`\alpha \tau_{cor} \ll 1`
  -  best results are for :math:`\alpha \tau_{sat} \sim 1`
  -  some trial/error required; edge turbulence likes :math:`\alpha^{-1}=200 L_\parallel / c_s`

In these expressions :math:`\tau_{{cor}}` and :math:`\tau_{{sat}}` are
the correlation and saturation times of the turbulence, respectively.
