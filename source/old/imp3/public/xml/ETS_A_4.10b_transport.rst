.. _ETS_A_4.10b_transport:

TRANSPORT
=========

The settings for TRANSPORT can be done inside the CONVERGENCE LOOP
composite actor. Therefore please do:

-  right click on the box
   CONVERGENCE LOOP
-  select
   Open actor
-  right click on the box
   TRANSPORT
-  select
   Configure actor
   to edit settings
-  choose your settings
-  press
   Commit

Transport models
----------------

ETS constructs the total transport coefficients from the combination of
Anomalous transport (model choice), Neoclassical transport (model
choice), Database transport (transport coefficients be saved to the
input shot) and Background transport (Transport coefficients defined
through the GUI interface)

D_tot = D_DB*M_DB + D_AN*M_AN + D_NC*M_NC + D_BG*M_BG

You should choose from the list of evailable models in each cathegory or
switch it *OFF*

Individual multipliers for all channels shall be specified on the lower
level through the code parameters of Transport Combiner

The list of available transport models can be found
`here <https://www.eufus.eu/documentation/EU-IM/html/ets_status.html>`__.

Background transport
--------------------

You can add the constant background level for each coefficient (ion and
impurity coefficients are expected to be the strings of [1:NION] and
[1:NIMP] elements respectively, separated by commas)

Edge transport barrier
----------------------

In this section you can artificially supress the transport outside of
specified *RHO_TOR_NORM_ETB*. Total transport coefficients for all
transport channels (ne, ni, nz, Te, Ti,...) will be reduced to constant
values specified below (ion and impurity coefficients are expected to be
the strings [1:NION] and [1:NIMP] respectively)

Total transport coefficients
----------------------------

The fine tuning of of transport coefficients can be done through editing
the XML code parameters of the *transport combiner* actor:

-  In
   Outline
   browse for
   transportcombiner
-  select
   Configure actor
-  click
   Edit Code Parameters
-  

   -  If you select
      OFF
      contributions from all transport models to this channel will be
      nullified;
   -  If you select
      Multipliers_for_contributions_from
      the transport channel will be activated, and the total transport
      coefficient will be combined from active tranport models. You gust
      need to specify multiplier against each channel;
   -  For convective velocity there is an additional option
      V_over_D_ratio_for_contributions_from
      . With this option selected the combiner will ignore the
      convective components provided by transport models. The convective
      velocity will be determined from the diffusion coefficient by
      applying fixed V/D ratio (
      for inward pinch the values should be negative!
      ).

-  Save and exit
-  Commit
