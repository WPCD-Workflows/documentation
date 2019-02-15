.. _ETS_A_4.10b_inst_events:

INSTANTANEOUS EVENTS & ACTUATORS
================================

At the moment, user can swith *ON* and *OFF* two types of events: PELLET
and SAWTOOTH

Pellet
------

At the top level of the workflow you can configure times for pellet
injection

-  right click on the box
   INSTANTANEOUS EVENTS & ACTUATORS
-  select
   Configure actor
   to edit settings
-  Select
   Pellet_injection
   equal
   ON
   if you like to use pellet in your simulation
-  Select mode of operation:

   -  Times_for_pellets
      equals
      specific
      - pellets will be shut at exact times specified in array
      times_pellet
   -  Times_for_pellets
      equals
      frequency
      – pellets will be shut from
      tstart_pellet
      until
      tend_pellet
      with a
      frequency_pellet

-  Commit

Parameters of individual pellet need to be configured through the
code_parameters of the PELLET actor. To access it go to *Outline* on the
right upper corner and open the following:

-  right click on the actor
   PELLET
-  select
   Configure actor
-  click
   Edit Code Parameters
-  edit parameters and click
   save and exit
-  Commit

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

Sawtooth
--------

At the top level of the workflow you can switch ON/OFF possible MHD
events

-  right click on the box
   INSTANTANEOUS EVENTS & ACTUATORS
-  select
   Configure actor
   to edit settings
-  Select
   SAWTOOTH
   ON
   if you like to use them in your simulation
-  Commit

Actuators
---------

At the top level of the workflow you can switch ON/OFF actuator for
runaways

-  right click on the box
   INSTANTANEOUS EVENTS & ACTUATORS
-  select
   Configure actor
   to edit settings
-  Select
   actuator_runaways
   ON
   if you like to use them in your simulation
-  Commit
