================================
 Core Transport Simulator (ETS)
================================

ETS source in FORTRAN
=====================


You can checkout the FORTRAN ETS workflow from gforge `/ project
ETS <https://gforge6.eufus.eu/gf/project/ets/>`__ following instructions
from `ETS User
Guide <../imports/ETS_Documentation/ETS_User_Guide.pdf>`__

If you did not use ETS before, first you need to request access to the
code via the `EFDA EU-IM Portal <https://gforge6.eufus.eu/>`__ by
following the GForge tab, following the `project
ETS <https://gforge6.eufus.eu/gf/project/ets/>`__ and requesting access.

Once you have access to the code, it can be checked out of SVN using

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/ets

to access the whole repository, or

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/ets/trunk/ETS

to access just the trunk version of the ETS.

The `ETS project on Gforge <https://gforge6.eufus.eu/gf/project/ets/>`__
also includes:

-  `A wiki <https://gforge6.eufus.eu/gf/project/ets/wiki/>`__
-  `Some documentation <https://gforge6.eufus.eu/gf/project/ets/docman/>`__
-  `Trackers <https://gforge6.eufus.eu/gf/project/ets/tracker/>`__
-  `News <https://gforge6.eufus.eu/gf/project/ets/news/>`__
-  `Mailing lists <https://gforge6.eufus.eu/gf/project/ets/mailman/>`__
-  `The SVN repository (web interface) <https://gforge6.eufus.eu/gf/project/ets/scmsvn/>`__

Documentation for the ETS
=========================

-  Current ETS Timeline (PDF)(MS Project)
-  `Description of the ETS <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/ETS_TRANSPORT_EQUATIONS.pdf>`__ 
-  `Form of the standardize equations <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/STANDARDISED_EQUATION.pdf>`__
-  `ETS User Guide <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/ETS_User_Guide.pdf>`__
-  `ETS Status <https://portal.eufus.eu/documentation/ITM/imports/imp3/public/ETS_Documentation/ETS_Status.pdf>`__
-  ETS Doxygen Documentation (PDF)(HTML)
-  `Pellets in ETS <https://portal.eufus.eu/documentation/ITM/html/pellet.html>`__

Presentations that discuss the ETS
==================================

-  Presentation at ICNSP-2009 on the ETS
-  Movie from the presentation showing the evolution of the flux
   surfaces
-  Movie from the presentation showing the evolution of the plasma

ETS Verification & Validation
=============================

.. _imp3_ets_vv:

Roadmap for the ETS verification and benchmarking procedure (based on G. Pereverzev's proposal)
-----------------------------------------------------------------------------------------------

-  Proposal for ETS verification and benchmarking procedure (PDF)
-  ETS verification and benchmarking (ASTRA results) (PDF)

Part I. Cylindrical geometry. Consistency check.
------------------------------------------------

Results obtained in 2011 for UAL-version 4.08b
----------------------------------------------

NOTE: For the particle diffusion coefficient D and pinch velocity v, the
values below correspond in fact to the individual coefficients for each of
the three transport models considered within ETS. For example, a v=1
translates into an effective pinch velocity of 3 in the density transport
equation and of 0+3/2+5/2=4 in the ion flux contributing to heat transport.

.. Continue table
   
+------+-----------------+---------+--------+-------------------+----------------------+
| Case | Description     | Subcase | Solver | Comments          | Graphic output (PDF) |
+======+=================+=========+========+===================+======================+
| I.1.1| Constant        | N/A     |   3    | Convergence ok.   |      I.1.1_s3        |
|      | densities and   |         |        | Errors within     |                      |
|      |                 |         |        | machine precision |                      |
+------+-----------------+---------+--------+-------------------+----------------------+
|      |                 |         |   7    | Convergence ok.   |      I.1.1_s7        |
|      |                 |         |        | Errors within     |                      |
|      |                 |         |        | machine precision |                      |
+------+-----------------+---------+--------+-------------------+----------------------+
|      |                 |         |   10   | Convergence ok.   |      I.1.1_s10       |
|      |                 |         |        | Errors within     |                      |
|      |                 |         |        | machine precision |                      |
+------+-----------------+---------+--------+-------------------+----------------------+
| I.1.2| Interpretative  | N/A     |   3    | Under analysis:   |      I.1.2_s3        |
|      | time-dependent  |         |        | no time evolution |                      |
|      | solution for    |         |        | for the           |                      |
|      | densities       |         |        | temperatures      |                      |
+------+-----------------+---------+--------+-------------------+----------------------+
| I.1  | Conservation    | N/A     |   N/A  | This case was     |         N/A          |
| .3   | laws (particle  |         |        | treated under     |                      |
|      | and energy)     |         |        | I.1.5             |                      |
|      | with diffusion  |         |        |                   |                      |
+------+-----------------+---------+--------+-------------------+----------------------+
| I.1.4| Conservation    | N/A     |   3    | Convergence ok    |       I.1.4_s3       |
|      | laws (particle  |         |        |                   |                      |
|      | and energy)     |         |        |                   |                      |
|      | with            |         |        |                   |                      |
|      | discontinuous   |         |        |                   |                      |
|      | diffusion       |         |        |                   |                      |
|      | coefficient     |         |        |                   |                      |
+------+-----------------+---------+--------+-------------------+----------------------+
|      |                 |         |   7    |  Convergence ok   | I.1.4_s7             |
+------+-----------------+---------+--------+-------------------+----------------------+
|      |                 |         |   10   | Failed to initiate|                      |
+------+-----------------+---------+--------+-------------------+----------------------+


Results obtained in 2012 for UAL-version 4.09a
----------------------------------------------

NOTE: Solver 4 is the one with the best performance. Solvers 3, 7 and 10
are to be disregarded in the future.
ALL solvers fail to converge (i.e. demanding more than 1000 iterations)
for convection v >= 1 m/s.

.. Continue table
   
+-----+-----------------+---------+---+-------------------+-------------+
| Cas | Description     | Subcase | S | Comments          | Graphic     |
| e   |                 |         | o |                   | output      |
|     |                 |         | l |                   | (PDF)       |
|     |                 |         | v |                   |             |
|     |                 |         | e |                   |             |
|     |                 |         | r |                   |             |
+=====+=================+=========+===+===================+=============+
| I.1 | Constant        | N/A     | 3 | Convergence ok.   | `I.1.1_101p |
| .1  | densities and   |         |   | Errors within     | ts_1e-2s <. |
|     | temperatures    |         |   | machine           | ./imports/E |
|     |                 |         |   | precision, except | TS_VV/4.09a |
|     |                 |         |   | for the on-axis   | /I.1.1_s3-4 |
|     |                 |         |   | value             | -7-10_Np101 |
|     |                 |         |   |                   | _dt1e-2.pdf |
|     |                 |         |   |                   | >`__        |
+-----+-----------------+---------+---+-------------------+-------------+

Other ETS related information
=============================

-  Visualization of the repository activity (x264)
-  Visualization of the repository activity (wmv2)

.. _ETS_in_KEPLER:

ETS workflows in KEPLER
=======================

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

There are currently 2 workflows being developed within EU-IM-IMP3 project:

-  ETS_A_4.10b Contact person: Denis Kalupin (Skype: dkalupin) (Status)
-  ETS_A_4.10a Contact person: Denis Kalupin (Skype: dkalupin) (Status)
-  ETS_C       Contact person: Vincent Basiuk, Philippe Huynh  (Status)

.. _ETS_A_4.10B:
   
ETS_A 4.10b
-----------
.. _ETS_A_4.10a_obtain:

Obtaining the ETS
~~~~~~~~~~~~~~~~~

*Contact person:*
`Denis Kalupin <mailto:denis.kalupin@euro-fusion.org?subject=ETS%20in%20KEPLER>`__ *(Skype:
dkalupin)*

Installing the ETS
++++++++++++++++++

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

.. Picture

**The workflow shall run!** If it
does not, please use the `contact <mailto:denis.kalupin@euro-fusion.org?subject=ETS%20in%20KEPLER>`__ from above.

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
          

ETS revisions
+++++++++++++

+-----------------+-----------------+-----------+---------------------+---------------------+
| *Revision Name:*| *UAL version:*  | *KEPLER:* | *Short Sumary:*     | *Comments:*         |
+=================+=================+===========+=====================+=====================+
|   4.10b0.1      | 4.10b8_R2.1.0.5 | any,      | Contains:Fixed      | Test 4.10b release, |
|                 |                 | up to     | boundary            | restricted module   |
|                 |                 | 4.10b3.5  | equlibrium; Simple  | choice, restricted  |
|                 |                 |           | transport models;   | physics             |
|                 |                 |           | full HCD package;   | capabilities, work  |
|                 |                 |           | Impurity; Pellets;  | around of coredelta |
|                 |                 |           | Sawtooth            |                     |
+-----------------+-----------------+-----------+---------------------+---------------------+
| 4.10b8.1        | 4.10b8_R2.1.0   | central   | Contains:Fixed      | Test 4.10b release, |
|                 |                 | instal    | boundary            | restricted module   |
|                 |                 | lation    | equlibrium; Simple  | choice, restricted  |
|                 |                 | 4.10b3    | transport models;   | physics             |
|                 |                 | central   | full HCD package;   | capabilities, work  |
|                 |                 | is prefer | Impurity; Pellets;  | around of           |
|                 |                 | red;local | Sawtooth; Scenario  | coredelta, produces |
|                 |                 | instal    |                     | scenario output on  |
|                 |                 | lation    |                     | request             |
|                 |                 | 4.10b3.6  |                     |                     | 
|                 |                 | or above  |                     |                     |
+-----------------+-----------------+-----------+---------------------+---------------------+
| 4.10b10.1       | 4.10b10         | central   | MODIFICATIONS       | UNDER CONSTRUCTION: |
|                 |                 |           | COMPATIBLE WITH     | release at the Code |
|                 |                 | instal    | 4.10b10 DATA        | Camp in Prague      |
|                 |                 | lation    | STRUCTURE           |                     |
|                 |                 | 4.10b     |                     |                     |
|                 |                 | 3_cent    |                     |                     |
|                 |                 | ral       |                     |                     |
|                 |                 | is        |                     |                     |
|                 |                 | prefer    |                     |                     |
|                 |                 | red;      |                     |                     |
|                 |                 | local     |                     |                     |
|                 |                 | instal    |                     |                     |
|                 |                 | lation    |                     |                     |
|                 |                 | 4.10b     |                     |                     |
|                 |                 | 3.6       |                     |                     |
|                 |                 | or        |                     |                     |
|                 |                 | above     |                     |                     |
+-----------------+-----------------+-----------+---------------------+---------------------+
| 4.10b10.2       | 4.10b10_bran    | centra    | Added synchrotron   | UNDER CONSTRUCTION: |
|                 | ches.R2.1.r1380 | l         | radiation, some of  | release at the Code |
|                 |                 | instal    | neoclassical        | Camp in Prague      |
|                 |                 | lation    | actors,reworked     |                     |
|                 |                 | 4.10b     | combiners           |                     |
|                 |                 | 3_cent    |                     |                     |
|                 |                 | ral       |                     |                     |
|                 |                 | is        |                     |                     |
|                 |                 | prefer    |                     |                     |
|                 |                 | red;      |                     |                     |
|                 |                 | local     |                     |                     |
|                 |                 | instal    |                     |                     |
|                 |                 | lation    |                     |                     |
|                 |                 | 4.10b     |                     |                     |
|                 |                 | 3.6       |                     |                     | 
|                 |                 | or        |                     |                     |
|                 |                 | above     |                     |                     |
+-----------------+-----------------+-----------+---------------------+---------------------+
| 4.10b10.3       | 4.10b1          | centra    | Added synchrotron   | compared to         |
|                 | 0_bran          | l         | radiation, some of  | previous shall      |
|                 | ches.           | instal    | neoclassical        | contain compeeted   |
|                 | R2.1.r          | lation    | actors,reworked     | transport, new      |
|                 | 1380            | keple     | combiners           | controller for      |
|                 |                 | r_rc      |                     | pellet and sawteeth |
|                 |                 | (2.4/R    |                     | module              |
|                 |                 | 3.8/ke    |                     |                     |
|                 |                 | pler      |                     |                     |
|                 |                 | or        |                     |                     |
|                 |                 | more      |                     |                     |
|                 |                 | recent    |                     |                     |
|                 |                 | )         |                     |                     |
|                 |                 | is        |                     |                     |
|                 |                 | prefer    |                     |                     |
|                 |                 | red       |                     |                     |
+-----------------+-----------------+-----------+---------------------+---------------------+

.. _ETS_A_4.10b_run_config:

Configuring the ETS run
~~~~~~~~~~~~~~~~~~~~~~~

.. _ETS_A_4.10b_workflow_parameters:

Workflow parameters
+++++++++++++++++++

General Parameters
""""""""""""""""""

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
""""""""""""""""

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
"""""""""""""""

**Start and End time:**

-  TBEGIN
   - Computations start time
-  TEND
   - Computattions end time

.. Picture

   
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

.. Picture

.. _ETS_A_4.10b_composition:

Ion, Impurity and Neutral Composition
+++++++++++++++++++++++++++++++++++++

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

.. Picture

.. _ETS_A_4.10b_equations:

Equations to be solved and boundary conditions
++++++++++++++++++++++++++++++++++++++++++++++

Main Plasma
"""""""""""

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

.. Picture

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
""""""""

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

.. Picture

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
""""""""

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

.. Picture

Input profiles interpolation
""""""""""""""""""""""""""""

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

.. Picture
   
.. _ETS_A_4.10b_convergence:

Convergence loop
++++++++++++++++

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

.. Picture

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
+++++++++++

Initialization Settings
"""""""""""""""""""""""

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

.. Picture
   
Please note, that different equilibrium solvers might require slightly
different input. Thus it is a user responsibility to check that the
information inside input shot/run is enough to run selected equilibrium
solver.

Run Settings
""""""""""""

There are several equilibrium solvers connected to the ETS. You can
select the one of them.Therefore please do:

-  right click on the box CONVERGENCE LOOP
-  select **Open actor**
-  right click on the box EQUILIBRIUM
-  select **Configure actor** to edit settings
-  choose your equilibrium solver
-  **Commit**

.. Picture

*INTERPRETATIVE* means that the ETS will not update the equilibrium,
instead it will be using the initial equilibrium.

Please note, that it is better to select the same code as you used for
pre-iterrations. Because outputs of different equilibrium solver are not
necessary done with the same resolution. Therefore the routine saving
the information to the data base might brake due to uncompatible sizes
of some signals.

.. Picture

.. _ETS_A_4.10A:

ETS_A 4.10a
-----------

**ETS_A workflow in KEPLER**:

-  uses as actors and composite actors from other IMPs, thus for the
   most recent versions of them please check with relevant project
-  complex, but clearly structured workflow, which offers user friendly
   interface for configuring the simulation
- allows for easy modifications (connecting new modules, or reconnecting
   the parts of the workflow) through the easy graphical interface
-  provides users with all updates through the version control system
-  still actively developing tool

The list and status of available physics models for the ETS_A can be
found
`here <https://www.eufus.eu/documentation/EU-IM/html/ets_status.html>`__.

**Contact person:** `Denis Kalupin <mailto:denis.kalupin@euro-fusion.org?subject=ETS%20in%20KEPLER>`__ (Skype:
dkalupin)*

.. Picture

Obtaining the ETS
~~~~~~~~~~~~~~~~~

Copy the ETS workflow to your space:

.. code-block:: console

   >svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/ets $EU-IMSCRATCH/ETS_WORKFLOWS

Compile ETS actors:

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >make import_ets

Updating the ETS
~~~~~~~~~~~~~~~~

If you have already a copy of the ETS you do not need to check it out
again!!!

If you like to update everything (WORKFLOW + ACTORS + VISUALIZATION +
INPUT DATA)

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >svn update
   >make import_ets

To update ETS actors go inside your ETS_ACTORS:

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >svn update
   >make import_actors

To update the workflow go inside your ETS_WORKFLOWS:

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >svn update

To update visualization scripts go inside your $KEPLER/kplots:

.. code-block:: console

   >svn update

This is ALL you need to do for updates!

Executing the ETS
~~~~~~~~~~~~~~~~~

.. Picture

Open ETS workflow in Kepler:

.. code-block:: console

   >kepler.sh $EU-IMSCRATCH/ETS_WORKFLOWS/ETS_WORKFLOW.xml

on the top of the workflow, change the parameter "user" to your user_ID.

You can run the workflow!!!

.. _ETS_A_4.10a_configuring:

Configuring the ETS run
~~~~~~~~~~~~~~~~~~~~~~~

.. _ETS_A_4.10a_workflow_parameters:

Workflow Parameters
+++++++++++++++++++

General Parameters
""""""""""""""""""

-  USER - your userid
-  MACHINE - machine name (database name) for which comutations are done
-  SHOT_IN - input shot number
-  RUN_IN - input run number
-  SHOT_OUT - output shot number
-  RUN_OUT - output run number
-  NUMERICAL_SOLVER - choice of the numerics solving transport equations
   (RECOMENDED SELECTION: 3 or 4)

Space resolution
""""""""""""""""

-  NRHO - number of radial points for transport equations
-  NPSI - number of points for equilibrium 1-D arrays
-  NEQ_DIM1 - number of points for equilibrium 2-D arrays, first index
-  NEQ_DIM2 - number of points for equilibrium 2-D arrays, second index
-  NEQ_MAX_NPOINTS - maximum number of points for equilibrium boundary

Time resolution
"""""""""""""""

Start and End time

-  TBEGIN - Computations start time
-  TEND - Computattions end time

.. Picture

Time spep

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Configure actor’
-  TAU:specify value of the time step in [s]
-  TAU_OUT: specify value of the output time interval in [s]
-  Commit

.. Picture
   
.. _ETS_A_4.10a_composition:

Plasma, Impurity and Neutrals Composition
+++++++++++++++++++++++++++++++++++++++++

Before starting the run you need to define types of main and impurity
ions and types of neutrals to be included in simulations.

To set up the composition:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Configure actor’
-  choose one of modes for setting "Run_compositions"
   "from_input_CPO" - will pick up the COMPOSITIONS structure of the
   COREPROF CPO from the input shot;
   "configure_manually" - will force the composition from the values
   specified below
-  specify values of AMN_ion, ZN_ion and Z_ion for ions, from the first
   ion to the last [1:NION], separated by commas
-  specify values of AMN_imp, ZN_imp and max_Z_imp for impurity ions,
   from the first to the last [1:NIMP], separated by commas
-  choose the neutrals types, which should be switched "ON"
-  Commit

.. Picture

.. _ETS_A_4.10a_equations:

Equations to be solved and boundary conditions
++++++++++++++++++++++++++++++++++++++++++++++

Main plasma
"""""""""""

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
   - 3 coefficients (a1,a2,a3) should be provided: a1*y´ + a2*y = a3
-  value_from_input_CPO
   - equation is solved, edge value evolution will be red from input
   shot
-  profile_from_input_CPO
   - equation is not solved, profile evolution will be red from input
   shot

The particular equation will be activated if the boundary condition type
for it is other than *OFF*!

.. Picture

To set up boundary conditions:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Configure actor’
-  select appropriate boundary condition for each equation
-  specify values for boundary conditions corresponding to the type and
   to the ion component
-  Commit

!!! If electron density is solved, all ions with ni_bnd_type=OFF will be
computed from the quasineutrality condition and scaled proportional to
specified *ni_bnd_value* or inversely proportional to their charge
*(charge_proportional)*. This is defined by option:
*ni_from_quasineutrality*.

Impurity
""""""""
You can set up the boundary conditions for impurity ions in a similar
way as for main ions. !!! Note, that at the moment only types: *OFF*;
*value* and *value_from_input_CPO* are accepter by impurity solver.

To set up boundary conditions:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Configure actor’
-  select appropriate boundary condition for each impurity species
   (OFF-equation is not solved)
-  specify values for boundary density of each impurity component
   [1:MAX_Z_IMP], separated by commas
-  Commit

.. Picture
   
Interface for impurity boundary condition has additional option ,
*coronal_distribution*, that allow to preset the edge values or entire
profiles of individual ionization states from coronal distribution. In
tis case only single value is required to be specified for each impurity
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
""""""""

!!! AT THE MOMENT BOUNDARY CONDITIONS FOR NEUTRAL VELOCITIES ARE
DISABLED, MIGHT BE ADDED ON REQUEST

Note, that ALL values should be specified in the order: *{1, 2, 3
...NION, 1, 2, 3, ...NIMP}*

To set up boundary conditions:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Configure actor’
-  select appropriate boundary condition for each neutral species
   (OFF-equation is not solved)
-  specify values for boundary density and temperature of each neutral
   component [1, 2, 3 ...NION, 1, 2, 3, ...NIMP], separated by commas
-  Commit

.. Picture

Input Profiles Interpolation
""""""""""""""""""""""""""""

You are going to start the ETS run from some input shot, which might
contain some conflicting rho grids. Thus there is a choice for the user
to decide on the grid on which the starting profiles should be load by
the worflow, *Interpolation_of_input_profiles*.

To define the interpolation grid select:

-  on_RHO_TOR_grid
   - interpolate input profiles based on the grid specyfied in [m];
-  on_RHO_TOR_NORM_grid
   - interpolate input profiles based on normalised rho grid [0:1]

.. Picture

.. _ETS_A_4.10a_convergence:

Convergence loop
++++++++++++++++

ETS updates input from different physics actors in a sequence, which is
finished by solving the transport equations. Ther are possible none-linear
couplings between different parts of the system. These nonelinearities are
trited by the ETS using iterations. The decision to step in time is made by
the ETS based on the criteria that the maximum relative deviation of main
plasma profiles is lower than some predefined tolerance. There is a number
of settings and sitches in the ETS that are used by the iterative scheme.
To edit them do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit

.. Picture
   
Switches in the field *FREQUENCY OF CALLING THE PHYSICS ACTORS* define how
many times the the actors of a certain cathegory (equilibrium, transport,
etc.) should be called in a single time step. By selecting *YES* all actors
of this cathegory will be called every iteration By selecting *NO* all
actors of this cathegory will be called only ones in a time step

Switches and parameters in the field *CONTROL PARAMETERS* define how
iterations are done

-  Tolerance
   - defines the maximum relative error of profiles change compared to
   previous iteration. If it is achieved the time steping is done.

For highly none-linear case the required precision can be achieved faster
by the iterative scheme if only fraction of the new solution is mixed to
the previous state. The following scheme is adopted by the ets to reduce
none-linearities in profiles, transport coefficients and sources:

.. code-block:: console

   Y = (Amix * Y+) + ((1-Amix)*Y-)

where Amix is the mixing fraction You can activate the mixing of profiles,
transport coefficient and sources by selecting the corresponding
*Mixing_fraction_...* to be between [0:1] You also can activate the
authomatic ajustment of this fraction by selecting: *Ajust_Mixing_for_...*
to *YES*

.. _ETS_A_4.10a_equilibrium:

Equilibrium
+++++++++++

Starting Settings
"""""""""""""""""

Before starting the run you need to set up your initial equlibrium. There
are several options to do it: if your input shot contains the consistent
equilibrium with all necessary parameters - you can start immediately from
it; if your input shot contains the equilibrium but it is not consistent or
some parameters are missing you can check it automatically; if your input
equilibrium is corrupt or not present - you can define the starting
equlinbrium by tree moment description. To select your starting equilibrium
please do:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Configure actor’ to edit settings
-  Select your settings or specify values
-  Commit

.. Picture

SETTINGS:

-  Equilibrium_configuration
   - select
   configure_manually
   if you like to specify configuration below; select
   from_input_CPO
   if all quantities should be picked up from the input CPO
-  Major_Radius_of_geom_axis_RGEO
   - radius of the geometrical centre of the vessel [m]
-  Altitude_of_geom_axis_ZGEO
   - altitude of the geometrical centre of the vessel [m]
-  Major_Radius_of_LCMS_centre_R0
   - radius of the plasma centre [m]
-  Altitude_of_LCMS_centre_Z0
   - altitude of the plasma centre [m]
-  Magn_field_on_LCMS_centre_B0
   - vacume magnetic field at R0 [T]
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

.. Picture

Please note, that different equilibrium solvers might require slightly
different input. Thus it is a user responsibility to check that the
information inside input shot/run is enough to run selected equilibrium
solver.

Run Settings
""""""""""""

There are several equilibrium solvers connected to the ETS. You can
select the one of them.Therefore please do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Open actor’
-  right click on the box ‘EQUILIBRIUM’
-  select ‘Configure actor’ to edit settings
-  choose your equilibrium solver
-  Commit

.. Picture
   
*INTERPRETATIVE* means that the ETS will not update the equilibrium,
instead it will be using the initial equilibrium.

Please note, that it is better to select the same code as you used for
pre-iterrations. Because outputs of different equilibrium solver are not
necessary done with the same resolution. Therefore the routine saving
the information to the data base might brake due to uncompatible sizes
of some signals.

.. Picture

.. _ETS_C_KEPLER:

ETS_C
-----

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

Contact persons: `Vincent Basiuk <mailto:vincent.basiuk@cea.fr?subject=ETS%20in%20KEPLER>`__ ,
`Philippe Huynh <mailto:philippe.huynh@cea.fr?subject=ETS%20in%20KEPLER>`__

.. Picture

.. _ets_status:

ETS Status
----------

+-----------------------+-----------------------+-----------------------+
| *Package Name /       |       ETS-A           |       ETS-C           |
| Physics Module*       |                       |                       |
+=======================+=======================+=======================+
| *EQILIBRIUM*          |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *fixed boundary:*     |                       |                       |
+-----------------------+-----------------------+-----------------------+
| BDSEQ                 | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| EMEQ                  | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| SPIDER                | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| SPIDER_IMP12          | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| CHEASE                | Ready for use         | validate              |
+-----------------------+-----------------------+-----------------------+
| HELENA                | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| HELENA21              |                       | work in 4.09a problem |
|                       |                       | when it doesn't find  |
|                       |                       | any equilibrium crash |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *free boundary:*      |                       |                       |
+-----------------------+-----------------------+-----------------------+
| CEDRES++              | In progress/tests are | validate (static      |
|                       | planned for Nov.2014  | mode, TBD evolution   |
|                       |                       | mode)                 |
+-----------------------+-----------------------+-----------------------+
| CREATE-NL             |                       |                       |
+-----------------------+-----------------------+-----------------------+
| FIXFREE               |                       |                       |
+-----------------------+-----------------------+-----------------------+
| EQFAST                |                       | work in 4.09a         |
+-----------------------+-----------------------+-----------------------+
| FREEBIE               |                       | validate              |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *MHD*                 |                       |                       |
+-----------------------+-----------------------+-----------------------+
| NTM                   | Ready for use         | validate              |
+-----------------------+-----------------------+-----------------------+
| SAWTEETH              | Implemented/Tested/re |                       |
|                       | lease                 |                       |
|                       | date:Nov.2014         |                       |
+-----------------------+-----------------------+-----------------------+
| Linear Stability      | Stand alone           |                       |
| Chain                 | tests/implementation  |                       |
|                       | in ETS and            |                       |
|                       | release:2015          |                       |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *TRANSPORT*           |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *analytical &         |                       |                       |
| interpretative:*      |                       |                       |
+-----------------------+-----------------------+-----------------------+
| From DATA BASE        | Ready for use         |                       |
| (interpretative)      |                       |                       |
+-----------------------+-----------------------+-----------------------+
| Edge Transport        | Ready for use         |                       |
| Barried (analytical)  |                       |                       |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *anomalous:*          |                       |                       |
+-----------------------+-----------------------+-----------------------+
| ETAIGB                | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| BOHM-GYROBOHM         | Ready for use         | validate, + effect of |
|                       |                       | rotation              |
+-----------------------+-----------------------+-----------------------+
| GLF23                 | Implemented/Tested/re | to be tested (GLF23   |
|                       | lease                 | installed in previous |
|                       | date:Nov.2014         | gateway not           |
|                       |                       | validated)            |
+-----------------------+-----------------------+-----------------------+
| WEILAND               | Implemented/Tested/re |                       |
|                       | lease                 |                       |
|                       | date:Nov.2014         |                       |
+-----------------------+-----------------------+-----------------------+
| REU-IM                | Implemented/Tested/re |                       |
|                       | lease                 |                       |
|                       | date:Nov.2014         |                       |
+-----------------------+-----------------------+-----------------------+
| EWDM                  | Implemented/Tested/re |                       |
|                       | lease                 |                       |
|                       | date:Nov.2014         |                       |
+-----------------------+-----------------------+-----------------------+
| TGLF                  | In progress/Some      |                       |
|                       | initial tests         |                       |
+-----------------------+-----------------------+-----------------------+
| KIAUTO                |                       | installed (transport  |
|                       |                       | model based on        |
|                       |                       | scaling law)          |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *neoclassical:*       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| NEOS                  | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| NEOWES                | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| NEOART                | Ready for use         |                       |
|                       | (probably not         |                       |
|                       | suggested as being    |                       |
|                       | too oscilatory)       |                       |
+-----------------------+-----------------------+-----------------------+
| NCLASS                | In progress           | validate with         |
|                       |                       | composition (to be    |
|                       |                       | upgrade with          |
|                       |                       | compositions          |
+-----------------------+-----------------------+-----------------------+
| NCLASS/FORCEBALL      |                       | installed (gives the  |
|                       |                       | radial electric       |
|                       |                       | field)                |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *HEAT,PARTICLE        |                       |                       |
| SOURCES & CURRENT     |                       |                       |
| DRIVE*                |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *analytical &         |                       |                       |
| interpretative:*      |                       |                       |
+-----------------------+-----------------------+-----------------------+
| From DATA BASE        | Ready for use         |                       |
| (interpretative)      |                       |                       |
+-----------------------+-----------------------+-----------------------+
| Gaussian              | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *impurity and         |                       |                       |
| particles:*           |                       |                       |
+-----------------------+-----------------------+-----------------------+
| IMPURITY              | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| NEUTRALS              | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| PELLET                | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| ZNEUTRES              |                       | installed (simple     |
|                       |                       | module of CRONOS for  |
|                       |                       | neutral source terms) |
+-----------------------+-----------------------+-----------------------+
| ZRECYCLE              |                       | edge boundary for     |
|                       |                       | electron density      |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *ECRH*                |                       |                       |
+-----------------------+-----------------------+-----------------------+
| GRAY                  | Ready for use         | Installed             |
+-----------------------+-----------------------+-----------------------+
| TORAY-FOM             |                       | In preparation        |
+-----------------------+-----------------------+-----------------------+
| TRAVIS                | Tested                | In preparation        |
+-----------------------+-----------------------+-----------------------+
| TORBEAM               |                       | In preparation        |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *ICRH*                |                       |                       |
+-----------------------+-----------------------+-----------------------+
| TORIC                 | In progress           | In preparation        |
+-----------------------+-----------------------+-----------------------+
| ICDEP                 |                       | Installed             |
+-----------------------+-----------------------+-----------------------+
| FPSIM                 |                       | Installed             |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *NBI*                 |                       |                       |
+-----------------------+-----------------------+-----------------------+
| NEMO                  | Ready for use         | Installed             |
+-----------------------+-----------------------+-----------------------+
| BBNBI                 | Ready for use         | In preparation        |
+-----------------------+-----------------------+-----------------------+
| NBISIM                | Ready for use         | Installed             |
+-----------------------+-----------------------+-----------------------+
| ASCOT                 | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| RISK                  | Ready for use         | In preparation        |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *LH*                  |                       |                       |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *nuclear sources*     |                       |                       |
+-----------------------+-----------------------+-----------------------+
| nuclearsim            | Ready for use         | Installed             |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *CONTROLS*            |                       |                       |
+-----------------------+-----------------------+-----------------------+
| NBI power control     | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| ECRH power control    | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| ICRH power control    | Ready for use         |                       |
+-----------------------+-----------------------+-----------------------+
| Pellet frequency      | Ready for use         |                       |
| control               |                       |                       |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *COUPLING TO EDGE*    |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SOLPS                 | Tested at Fortran     |                       |
|                       | level                 |                       |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| *DOCUMENTATION and    |                       |                       |
| MANUALS*              |                       |                       |
+-----------------------+-----------------------+-----------------------+
| Physics Description   | Description of the    |                       |
|                       | ETS                   |                       |
+-----------------------+-----------------------+-----------------------+
| Numerics Description  | Form of the           |                       |
|                       | standardize           |                       |
|                       | equations             |                       |
+-----------------------+-----------------------+-----------------------+
| Manuals               | -  ETS workflows in   |                       |
|                       |    KEPLER             |                       |
|                       | -  ETS source in      |                       |
|                       |    Fortran            |                       |
+-----------------------+-----------------------+-----------------------+
