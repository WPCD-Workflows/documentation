.. _ETS_A_4.10b_mhd:

MHD
===

The settings for MHD type of events can be done inside the CONVERGENCE
LOOP composite actor. Therefore please do:

-  right click on the box
   CONVERGENCE LOOP
-  select
   Open actor
-  right click on the box
   MHD
-  select
   Configure actor
   to edit settings
-  choose your settings
-  Commit

At the moment ETS allows only for NTM to be activated. The sawtooth
module is expected to be deployed before EU-IM Code Camp in Slovenia.

User can ajust the following NTM settings:

-  NTM
   –
   ON
   means that ETS will add the NTM driven transport to the total
   transport coefficient;
   OFF
   -ignored
-  NTMTransportMultiplier
   – the transport contrinution from NTM will be multiplied with this
   value
-  Onset_NTM_time
   - activation time for the NTM mode
-  Onset_NTM_width
   - starting width of the mode
-  m_NTM_poloidal_number
-  n_NTM_toroidal_number
-  NTM_phase
-  NTM_frequency
