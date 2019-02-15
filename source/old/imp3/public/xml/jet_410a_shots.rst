.. _jet_410a_shots:

JET 4.10a shots
===============

Following simulations are available for JET machine in UAL 4.10a:

The shots can be accessed from the private data bases of IMP3
contributors by selecting the TOKAMAKNAME = *jet* and the UAL version =
*4.10a*

*There are two ways to copy the data to your local data base:* You can
copy them directly from the data provider data base as it is mentioned
in the table:

::

   cp ~user/public/itmdb/itm_tree/jet/4.10a/mdsplus/0/euitm_ShotRun.* $MDSPLUS_TREE_BASE_0/.

You can check out the data from svn:

::

   svn co --force https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/DATA/JET $(MDSPLUS_TREE_BASE_0)

ETS input shots
---------------

These are copies of shots, generated originaly with other codes or
containing the experimental data, which were migrated to the ITM-Gateway
machine with the tools like
`Exp2ITM <https://www.eufus.eu/documentation/ITM/html/isip_databases.html#isip_databases_2>`__
These are used to start the ETS run and, therefore, might not provide
the comlete set of consistent data.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| *7 | * | equi | de | JETTO/EFIT      | ETS input shot used to test   |
| 18 | 1 | libr | nk |                 | inputs from experimental      |
| 27 | * | ium  | a  |                 | profiles                      |
| *  |   | core |    |                 |                               |
|    |   | prof |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *7 | * | equi | de | JETTO/EFIT      | ETS input shot used to test   |
| 79 | 2 | libr | nk |                 | inputs from experimental      |
| 22 | * | ium  | a  |                 | profiles                      |
| *  |   | core |    |                 |                               |
|    |   | prof |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *8 | * | equi | de | JETTO/EFIT      | ETS input shot used to test   |
| 18 | 1 | libr | nk |                 | inputs from experimental      |
| 56 | * | ium  | a  |                 | profiles                      |
| *  |   | core |    |                 |                               |
|    |   | prof |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *8 | * | equi | de | JETTO/EFIT      | ETS input shot used to test   |
| 27 | 1 | libr | nk |                 | inputs from experimental      |
| 94 | * | ium  | a  |                 | profiles                      |
| *  |   | core |    |                 |                               |
|    |   | prof |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

ETS interpretative runs
-----------------------

These are ETS simulations, in which the evolution of the main plasma
profiles was disabled (usually only EQUILIBRIUM+Current equation were
simulated). Nonetheless, these runs should provide the complete
consistent set of data (although some signals might be filled with 0.0)
and might be very convinient for testing purposes. Especially, if you
need steady state test bed shot.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| *7 | * | equi | de | ETS/EMEQ        | ETS interpretative run [time: |
| 79 | 4 | libr | nk |                 | *48.01-49.01*; composition:   |
| 22 | * | ium  | a  |                 | *e,D*; ip=\ *1,7MA*           |
| *  |   | core |    |                 | Bt=\ *2.3T,*; predictive      |
|    |   | prof |    |                 | equations: *Jpar*; sources:   |
|    |   | core |    |                 | *OFF*; Transport: *OFF*]      |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *7 | * | equi | de | ETS/SPIDER      | ETS interpretative run [time: |
| 79 | 5 | libr | nk |                 | *48.01-49.01*; composition:   |
| 22 | * | ium  | a  |                 | *e,D*; ip=\ *1,7MA*           |
| *  |   | core |    |                 | Bt=\ *2.3T,*; predictive      |
|    |   | prof |    |                 | equations: *Jpar*; sources:   |
|    |   | core |    |                 | *OFF*; Transport: *OFF*]      |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *7 | * | equi | de | ETS/CHEASE      | ETS interpretative run [time: |
| 79 | 6 | libr | nk |                 | *48.01-49.01*; composition:   |
| 22 | * | ium  | a  |                 | *e,D*; ip=\ *1,7MA*           |
| *  |   | core |    |                 | Bt=\ *2.3T,*; predictive      |
|    |   | prof |    |                 | equations: *Jpar*; sources:   |
|    |   | core |    |                 | *OFF*; Transport: *OFF*]      |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

ETS predictive runs
-------------------

These are ETS simulations, in which some physics study was done. Short
description of the run configuration is available in the table below.
Nonetheless, we strongly advise you to contact the run author for the
details.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| *7 | * | equi | de | ETS/CHEASE/BGB/ | ETS run with NTM[time:        |
| 67 | 1 | libr | nk | NTMETS          | *49.9-50.9*; composition:     |
| 91 | 1 | ium  | a  |                 | *e,D*; ip=\ *1.6MA*           |
| *  | * | core |    |                 | Bt=\ *2.0T,*; predictive      |
|    |   | prof |    |                 | equations: *Jpar,ni,Ti,Te*;   |
|    |   | core |    |                 | sources: *NBI[10MW]*;         |
|    |   | sour |    |                 | Transport: *BGB+BG+MHD*]      |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *7 | * | equi | de | ETS/CHEASE/GEM/ | ETS run with GEM [time:       |
| 79 | 1 | libr | nk | BBNBI/NEUTRALS  | *48.04-48.22*; composition:   |
| 22 | 2 | ium  | a  |                 | *e,D*; ip=\ *1,7MA*           |
| *  | * | core |    |                 | Bt=\ *2.3T,*; predictive      |
|    |   | prof |    |                 | equations:                    |
|    |   | core |    |                 | *Jpar,ni,Ti,Te,n0*; sources:  |
|    |   | sour |    |                 | *NBI[10MW], Neutrals[2*10²²   |
|    |   | ce   |    |                 | 1/s]*; Transport: *GEM(256    |
|    |   | core |    |                 | cores)+BG*]                   |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *8 | * | equi | de | ETS/CEASE/BGB/B | ETS run with impurity[time:   |
| 18 | 4 | libr | nk | BNBI            | *52.2-53.2*; composition:     |
| 56 | * | ium  | a  | /IMPURITY/NEUTR | *e,D,Be,W*; ip=\ *2.45MA*     |
| *  |   | core |    | ALS             | Bt=\ *2.56T,*; predictive     |
|    |   | prof |    |                 | equations:                    |
|    |   | core |    |                 | *Jpar,ni,Ti,Te,n0,nZ*;        |
|    |   | sour |    |                 | sources: *NBI[10MW]*;         |
|    |   | ce   |    |                 | Transport: *BGB+BG*]          |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *8 | * | equi | de | ETS/CEASE/BGB/B | ETS run with impurity[time:   |
| 18 | 5 | libr | nk | BNBI            | *52.2-53.2*; composition:     |
| 56 | * | ium  | a  | /IMPURITY/NEUTR | *e,D,Be,W*; ip=\ *2.45MA*     |
| *  |   | core |    | ALSMgnetic      | Bt=\ *2.56T,*; predictive     |
|    |   | prof |    | axis:           | equations:                    |
|    |   | core |    | Zmag=\ *+15 cm* | *Jpar,ni,Ti,Te,n0,nZ*;        |
|    |   | sour |    |                 | sources: *NBI[10MW]*;         |
|    |   | ce   |    |                 | Transport: *BGB+BG*]          |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *8 | * | equi | de | ETS/SPIDER/BGB/ | ETS run with impurity[time:   |
| 18 | 6 | libr | nk | Gauss           | *52.2-53.2*; composition:     |
| 56 | * | ium  | a  | /IMPURITY/NEUTR | *e,D,Be,W*; ip=\ *2.45MA*     |
| *  |   | core |    | ALSMgnetic      | Bt=\ *2.56T,*; predictive     |
|    |   | prof |    | axis:           | equations:                    |
|    |   | core |    | Zmag=\ *+15 cm* | *Jpar,ni,Ti,Te,n0,nZ*;        |
|    |   | sour |    |                 | sources: *Gauss[10MW]*;       |
|    |   | ce   |    |                 | Transport: *BGB+BG*]          |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

