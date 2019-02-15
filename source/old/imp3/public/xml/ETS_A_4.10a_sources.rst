.. _ETS_A_4.10a_sources:

SOURCES AND IMPURITY
====================

The settings for SOURCES AND IMPURITY can be done inside the CONVERGENCE
LOOP composite actor. Therefore please do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Open actor’
-  right click on the box ‘SOURCES AND IMPURITY’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit

IMP3 sources
------------

There is a number of sources developed by IMP3 project, which are actors
or internal routines of the transport solver. You can activate them by
selecting *ON / OFF* in front of corresponding source:

-  Database Sources –
   ON
   - ETS will pick up the evolution of source profiles saved to your
   input shot/run;
   OFF
   -ignored
-  Ohmic Heating –
   ON
   - ETS will compute Ohmic heating internaly;
   OFF
   -ignored
-  Gaussian Sources –
   ON
   - ETS will add sources from the Gaussian source actor (you can
   configure heat and particle deposition profiles by editing the code
   parameters of the actor);
   OFF
   -ignored
-  Neutral Sources–
   ON
   - Fluid neutrals will be solved according to the boundary conditions
   specified on ¨Before_time_evolution¨ composite actor interface;
   OFF
   -ignored
-  Switch_IMPURITY–
   ON
   - Impurity density and radiative sources will be computed;
   OFF
   -ignored;
   INTERPRETATIVE
   – profiles of impurity density will be read from input shot/run

IMP5HCD sources
---------------

There is a number of sources developed by IMP5 project, that are
incorporated by the ETS workflow.

For the IMP5HCD sources please activate the type of heating source, by
ticking the box in front of it, and select the code to simulate it.

You also need to configure initial IMP5HCD settings. Therefore please:

-  right click on the box ‘BEFORE THE TIME EVOLUTION’
-  select ‘Open Actor’
-  right click on the box ‘SETTINGS FOR HEATING AND CURRENT DRIVE’
-  select ‘Configure actor’
-  edit the stettings
-  Commit

The detailed information on initial IMP5HCD settings can be found
`here <https://www.eufus.eu/documentation/ITM/html/imp5_imp5hcd.html>`__.
Please note that settings for NBI are done independent for each PINI.
Therefore, for NBI settings, please insert the values separated by
commas. The number of the element in the array corresponds to the number
of activated PINI. Maximum accepted number of PINIs = 16.

Power control
-------------

You also can activate the power control for the IMP5HCD sources.

If the POWER_CONTROL is not *OFF*, there are two modes of
operation:\ *specific* and *frequency*

For *specific* you should specify the time sequence separated by commas
and the corresponding power sequence (where first power level
corresponds to the first time, second to second and etc.). Linear
interpolation will be done between the sequence points. For example: if
you give the power sequence = 2e6,4e6,1e6 and times = 0.0, 0.7, 1.5 (s)
the delivered power would be:

For *frequency* you should specify the power levels sequence separated
by commas, start and end time of the power control and the frequency of
switching between these levels. For example: if you give the power
sequence = 2e6,4e6,1e6 and frequency = 10 (Hz) tstart =0.0 (s) tend =
1.5 (s) the delivered power would be:

Total power
-----------

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
