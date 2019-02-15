.. _mast_410a_shots:

MAST 4.10a shots
================

Following simulations are available for MAST machine in UAL 4.10a:

The shots can be accessed from the private data bases of IMP3
contributors by selecting the TOKAMAKNAME = *mast* and the UAL version =
*4.10a*

*There are two ways to copy the data to your local data base:* You can
copy them directly from the data provider data base as it is mentioned
in the table:

::

   cp ~user/public/itmdb/itm_tree/mast/4.10a/mdsplus/0/euitm_ShotRun.* $MDSPLUS_TREE_BASE_0/.

You can check out the data from svn:

::

   svn co --force https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/DATA/MAST $(MDSPLUS_TREE_BASE_0)

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
| *2 | * | equi | de | TRANSP          | ETS input shot [time:         |
| 68 | 1 | libr | nk |                 | *40.153-40.428*; composition: |
| 64 | * | ium  | a  |                 | *e,D,C,H(fast)*; ip=\ *0.8MA* |
| *  |   | core |    |                 | Bt=\ *0.48T,*; upward shifted |
|    |   | prof |    |                 | plasma                        |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | TRANSP          | ETS input shot [time:         |
| 82 | 1 | libr | nk |                 | *40.203-40.40.353*;           |
| 82 | * | ium  | a  |                 | composition: *e,D,C,H(fast)*; |
| *  |   | core |    |                 | ip=\ *0.8MA* Bt=\ *0.48T,*;   |
|    |   | prof |    |                 | downward shifted plasma       |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
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
| *2 | * | equi | de | ETS/CHEASE      | ETS interpretative shot       |
| 68 | 2 | libr | nk |                 | (single slice) [time:         |
| 64 | * | ium  | a  |                 | *40.27*; composition:         |
| *  |   | core |    |                 | *e,D,C,H(fast)*; ip=\ *0.8MA* |
|    |   | prof |    |                 | Bt=\ *0.48T,*; upward shifted |
|    |   | core |    |                 | plasma                        |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/CHEASE      | ETS interpretative shot       |
| 82 | 2 | libr | nk |                 | (single slice) [time:         |
| 82 | * | ium  | a  |                 | *40.27*; composition:         |
| *  |   | core |    |                 | *e,D,C,H(fast)*; ip=\ *0.8MA* |
|    |   | prof |    |                 | Bt=\ *0.48T,*; downward       |
|    |   | core |    |                 | shifted plasma                |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
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
| *2 | * | equi | de | ETS/CHEASE/BGB  | ETS predictive run [time:     |
| 68 | 3 | libr | nk |                 | *40.27-40.32*; composition:   |
| 64 | * | ium  | a  |                 | *e,D,C,H(fast)*; ip=\ *0.8MA* |
| *  |   | core |    |                 | Bt=\ *0.48T,*; upward shifted |
|    |   | prof |    |                 | plasma; predictive equations: |
|    |   | core |    |                 | *Jpar,Te,Ti*; *ni*\ evolution |
|    |   | tran |    |                 | from input TRANSP shot;       |
|    |   | sp   |    |                 | sources: *from DataBase*;     |
|    |   | core |    |                 | Transport: *BgB*; Impurity:   |
|    |   | sour |    |                 | *INTERPRETATIVE*]             |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/CHEASE/BGB  | ETS predictive run [time:     |
| 82 | 3 | libr | nk |                 | *40.27-40.32*; composition:   |
| 82 | * | ium  | a  |                 | *e,D,C,H(fast)*; ip=\ *0.8MA* |
| *  |   | core |    |                 | Bt=\ *0.48T,*; downward       |
|    |   | prof |    |                 | shifted plasma; predictive    |
|    |   | core |    |                 | equations: *Jpar,Te,Ti*;      |
|    |   | tran |    |                 | *ni*\ evolution from input    |
|    |   | sp   |    |                 | TRANSP shot; sources: *from   |
|    |   | core |    |                 | DataBase*; Transport: *BgB*;  |
|    |   | sour |    |                 | Impurity: *INTERPRETATIVE*]   |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | neut |    |                 |                               |
|    |   | rals |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
