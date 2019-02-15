.. _ETS_A_4.10b_equilibrium:

EQUILIBRIUM
===========

Initialization Settings
-----------------------

Before starting the run you need to set up your initial equlibrium.
There are several options to do it: if your input shot contains the
consistent equilibrium with all necessary parameters - you can start
immediately from it; if your input shot contains the equilibrium but it
is not consistent or some parameters are missing you can check it
automatically; if your input equilibrium is corrupt or not present - you
can define the starting equlinbrium by tree moment description. To
select your starting equilibrium please do:

-  right click on the box
   BEFORE THE TIME EVOLUTION
-  select
   Configure actor
   to edit settings
-  Select your settings or specify values
-  Commit

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

Please note, that different equilibrium solvers might require slightly
different input. Thus it is a user responsibility to check that the
information inside input shot/run is enough to run selected equilibrium
solver.

Run Settings
------------

There are several equilibrium solvers connected to the ETS. You can
select the one of them.Therefore please do:

-  right click on the box
   CONVERGENCE LOOP
-  select
   Open actor
-  right click on the box
   EQUILIBRIUM
-  select
   Configure actor
   to edit settings
-  choose your equilibrium solver
-  Commit

*INTERPRETATIVE* means that the ETS will not update the equilibrium,
instead it will be using the initial equilibrium.

Please note, that it is better to select the same code as you used for
pre-iterrations. Because outputs of different equilibrium solver are not
necessary done with the same resolution. Therefore the routine saving
the information to the data base might brake due to uncompatible sizes
of some signals.
