.. _ETS_A_4.10b_composition:

ION, IMPURITY and NEUTRAL COMPOSITION
=====================================

Before starting the run you need to define types of main ions, impurity
(optional) and neutrals (optional) to be included in simulations.

To define plasma composition:

-  right click on the box
   BEFORE THE TIME EVOLUTION
-  select
   Configure actor
-  choose one of modes for setting
   Run_compositions

   -  from_input_CPO
      - will pick up the COMPOSITIONS structure of the COREPROF CPO
      saved to the input shot;
   -  configure_manually
      - will force the composition from the values specified below

-  specify values of atomic mass (
   AMN_ion
   ), nuclear charge (
   ZN_ion
   ) and charge (
   Z_ion
   , from the first ion to the last
   [1:NION]
   , separated by commas
-  (optional) specify values of atomic mass (
   AMN_imp
   ), nuclear charge (
   ZN_imp
   ) and maximal ionization state (
   max_Z_imp
   ) for impurity ions, from the first to the last
   [1:NIMP]
   , separated by commas
-  (optional)for neutrals activate, by switchen them to
   ON
   , the types which shall be followed by neutral solver
-  press
   Commit
