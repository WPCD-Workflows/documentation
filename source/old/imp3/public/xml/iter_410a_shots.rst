.. _iter_410a_shots:

ITER 4.10a shots
================

Following simulations are available for ITER machine in UAL 4.10a:

The shots can be accessed from the private data bases of IMP3
contributors by selecting the TOKAMAKNAME = *iter* and the UAL version =
*4.10a*

*There are two ways to copy the data to your local data base:* You can
copy them directly from the data provider data base as it is mentioned
in the table:

::

   cp ~user/public/itmdb/itm_tree/iter/4.10a/mdsplus/0/euitm_ShotRun.* $MDSPLUS_TREE_BASE_0/.

You can check out the data from svn:

::

   svn co --force https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/DATA/ITER $(MDSPLUS_TREE_BASE_0)

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
| *3 | * | equi | de | ETS/CHEASE      | ETS interpretative run [time: |
| 54 | 5 | libr | nk |                 | *1.0-2.0*; composition:       |
| 41 | * | ium  | a  |                 | *e,D,T,He*; ip=\ *15MA*       |
| *  |   | core |    |                 | Bt=\ *6.2T,*; predictive      |
|    |   | prof |    |                 | equations: *Jpar*; sources:   |
|    |   | core |    |                 | *OFF*; Transport: *OFF*]      |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *3 | * | equi | de | ETS/CHEASE      | ETS interpretative run [time: |
| 54 | 6 | libr | nk |                 | *0.1-1.0*; composition:       |
| 41 | * | ium  | a  |                 | *e,D,T,He,Be,Ne,W*;           |
| *  |   | core |    |                 | ip=\ *15MA* Bt=\ *6.2T,*;     |
|    |   | prof |    |                 | predictive equations: *Jpar*; |
|    |   | core |    |                 | sources: *OFF*; Transport:    |
|    |   | sour |    |                 | *OFF*; Impurity: *coronal*]   |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
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
| *3 | * | equi | de | ETS/CHEASE/BGB/ | ETS predictive run [time:     |
| 54 | 8 | libr | nk | BBNBI           | *1.0-2.0*; composition:       |
| 41 | * | ium  | a  |                 | *e,D,T,He,Be,Ne,W*;           |
| *  |   | core |    |                 | ip=\ *15MA* Bt=\ *6.2T,*;     |
|    |   | prof |    |                 | predictive equations:         |
|    |   | core |    |                 | *Jpar,ni,Ti,Te*; sources:     |
|    |   | sour |    |                 | *NBI{60MW]*; Transport:       |
|    |   | ce   |    |                 | *BGB*; Impurity: *coronal*]   |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

