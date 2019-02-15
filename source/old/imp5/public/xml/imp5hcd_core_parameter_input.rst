.. _imp5hcd_core_param_input:

Parameter input to IMP5HCD
==========================

UNDER CONSTRUCTION

Running IMP5HCD there are a number of workflow setting to consider.

.. _imp5hcd_core_param_input__SELECT_HEATING_SCHEMES:

Select Heating Schemes
----------------------

These setting allow the user to turn on or off heating schemes.
.. _imp5hcd_core_param_input__SELECT_CODES:

Select Codes
------------

Here the physics codes of different categories can be selected. More
information about the codes one can choose from can be found
`here <#imp5_listcodes>`__.

NOTE: Some codes that appear in the drop down menues may not yet be
running with the latest version of the UAL, thus check the list of
`physics actors available in IMP5HCD <#imp5_imp5hcd_physics_actors>`__.

NOTE: The codes selected here are only run if the corresponding heating
scheme is selected in `Select Heating
Schemes <#imp5hcd_core_param_input__SELECT_HEATING_SCHEMES>`__. What
codes are used also depends on setting in
`Misc <#imp5hcd_core_param_input__SELECT_CODES>`__, e.g. the variable
Combine_waves_and_sources_in_ion_FP will switch between running the
different ion Fokker-Planck codes:

-  when
   Combine_waves_and_sources_in_ion_FP=TRUE
   , then the Fokker-Planck solver is selected from
   Ion_FokkerPlanck_wave_and_source_code
-  when
   Combine_waves_and_sources_in_ion_FP=FALSE
   , then the Fokker-Planck solver is selected from
   Ion_FokkerPlanck_with_source_code
   and
   Ion_FokkerPlanck_wave_heating_code
   .

.. _imp5hcd_core_param_input__SELECT_OCCURRENCES:

Select Occurrences
------------------

Selecting the first in s series of occurrence numbers. For advanced
users only.
.. _imp5hcd_core_param_input__MISC:

Misc
----

-  Combine_waves_and_sources_in_ion_FP
   : Switch between using a single code for solving the ion
   Fokker-Planck equation including both wave and source heating, or to
   have two different solver calculating the heating from the wave and
   source terms.
-  Local_UALsliceCollection
   : Enable UAL slice collection. Note that this parameter has to be
   switched off when running in the ETS.
-  enable_visualization
   : Enable visualization. Note that this parameter has to be switched
   off in the ETS.
-  ic_wave_nr_toroidal_modes
   : the number of toroidal Fourier modes to be used in the ICRF wave
   field.
-  number_nbi_markers_in
   : the number of nbi markers to be used in Monte Carlo NBI solvers.
