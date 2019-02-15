.. _ETS_A_4.10a_transport:

TRANSPORT
=========

The settings for TRANSPORT can be done inside the CONVERGENCE LOOP
composite actor. Therefore please do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Open actor’
-  right click on the box ‘TRANSPORT’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit

Choice of transport model
-------------------------

ETS constructs the total transport coefficients from the combination of
Anomalous transport (model choice), Neoclassical transport (model
choice) and Database transport (transport coefficients be saved to the
input shot)

::

   D_tot = D_DB*M_DB + D_AN*M_AN + D_NC*M_NC 

You should choose from the list of evailable models in each cathegory or
switch it OFF

The list of available transport models can be found
`here <https://www.eufus.eu/documentation/EU-IM/html/ets_status.html>`__.

Main plasma transport
---------------------

In this section you define how total transport coefficients for main
ions should be constructed from contributions provided by different
models. You need to provide the multipliers for Anomalous, Neoclassical
and Database contributions, which will determine their weights in total
transport coefficient.

You also can add the constant background level for each coefficient (ion
coefficients are expected to be the string {1:NION}, separated by
commas)

Impurity transport
------------------

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

Edge transport barrier
----------------------

In this section you can artificially supress the transport outside of
specified *RHO_TOR_NORM_ETB*. Total transport coefficients for all
transport channels (ne, ni, nz, Te, Ti,...) will be reduced to constant
values specified below (ion and impurity coefficients are expected to be
the strings {1:NION}) and {1:NIMP} respectively)

Total transport coefficients
----------------------------

Profiles of the total transport coefficient for each channel are
obtained from the the individual contributions (Data Base, Anomalous,
Neoclassical and Background) as a summ of all activated transport models
multiplied with coefficients specified on the interface of the composite
actor.

::

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
