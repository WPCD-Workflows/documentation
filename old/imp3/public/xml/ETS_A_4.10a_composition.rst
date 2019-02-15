.. _ETS_A_4.10a_composition:

PLASMA, IMPURITY and NEUTRALS COMPOSITION
=========================================

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
