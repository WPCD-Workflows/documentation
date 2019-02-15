.. _aug_410a_shots:

AUG 4.10a shots
===============

Following simulations are available for AUG machine in UAL 4.10a:

The shots can be accessed from the private data bases of IMP3
contributors by selecting the TOKAMAKNAME = *aug* and the UAL version =
*4.10a*

*There are two ways to copy the data to your local data base:* You can
copy them directly from the data provider data base as it is mentioned
in the table:

::

   cp ~user/public/itmdb/itm_tree/aug/4.10a/mdsplus/0/euitm_ShotRun.* $MDSPLUS_TREE_BASE_0/.

You can check out the data from svn:

::

   svn co --force https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/DATA/AUG $(MDSPLUS_TREE_BASE_0)

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
| 89 | 1 | libr | nk |                 | *41.001-45.0*; composition:   |
| 06 | * | ium  | a  |                 | *e,D,C*; ip=\ *0.508MA*       |
| *  |   | core |    |                 | Bt=\ *2.48T,*; predictive     |
|    |   | prof |    |                 | equations:                    |
|    |   | core |    |                 | *Jpar,ni,Ti,Te,nz*; only      |
|    |   | tran |    |                 | fully-stripped C is present]  |
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
| *2 | * | equi | de | ETS/CHEASE      | ETS interpretative run [time: |
| 89 | 4 | libr | nk |                 | *42.0-43.0*; composition:     |
| 06 | * | ium  | a  |                 | *e,D,C*; ip=\ *0.51MA*        |
| *  |   | core |    |                 | Bt=\ *2.48T,*; predictive     |
|    |   | prof |    |                 | equations: *Jpar*; sources:   |
|    |   | core |    |                 | *OFF*; Transport: *OFF*;      |
|    |   | sour |    |                 | Impurity: *INTERPRETATIVE*]   |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/CHEASE      | ETS interpretative ad hoc run |
| 90 | 3 | libr | nk |                 | [time: *0.1-1.0*;             |
| 72 | * | ium  | a  |                 | composition: *e,D*;           |
| *  |   | core |    |                 | ip=\ *0.51MA* Bt=\ *2.49T,*;  |
|    |   | prof |    |                 | predictive equations: *Jpar*; |
|    |   | core |    |                 | sources: *OFF*; Transport:    |
|    |   | sour |    |                 | *OFF*]                        |
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
| *2 | * | equi | de | ETS/CHEASE/BgB  | ETS predictive run [time:     |
| 89 | 5 | libr | nk |                 | *42.0-43.0*; composition:     |
| 06 | * | ium  | a  |                 | *e,D,C*; ip=\ *0.51MA*        |
| *  |   | core |    |                 | Bt=\ *2.48T,*; predictive     |
|    |   | prof |    |                 | equations: *Jpar,ni,Te,Ti*;   |
|    |   | core |    |                 | sources: *from DataBase*;     |
|    |   | sour |    |                 | Transport: *BgB*; Impurity:   |
|    |   | ce   |    |                 | *INTERPRETATIVE*]             |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/CHEASE/BgB/ | ETS predictive run [time:     |
| 89 | 6 | libr | nk | IMPURITY        | *43.0-44.0*; composition:     |
| 06 | * | ium  | a  |                 | *e,D,C*; ip=\ *0.51MA*        |
| *  |   | core |    |                 | Bt=\ *2.48T,*; predictive     |
|    |   | prof |    |                 | equations:                    |
|    |   | core |    |                 | *Jpar,ni,Te,Ti,nz*; sources:  |
|    |   | sour |    |                 | *from DataBase*; Transport:   |
|    |   | ce   |    |                 | *BgB*; Impurity: *ON*]        |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/CHEASE/BgB  | ETS predictive run [time:     |
| 89 | 7 | libr | nk |                 | *42.0-43.0*; composition:     |
| 06 | * | ium  | a  |                 | *e,D*; ip=\ *0.51MA*          |
| *  |   | core |    |                 | Bt=\ *2.48T,*; predictive     |
|    |   | prof |    |                 | equations: *Jpar,ni,Te,Ti*;   |
|    |   | core |    |                 | sources: *from DataBase*;     |
|    |   | sour |    |                 | Transport: *BgB*; Impurity:   |
|    |   | ce   |    |                 | *OFF*]                        |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/SPIDER/BgB  | ETS predictive run [time:     |
| 89 | 8 | libr | nk |                 | *42.0-43.0*; composition:     |
| 06 | * | ium  | a  |                 | *e,D*; ip=\ *0.51MA*          |
| *  |   | core |    |                 | Bt=\ *2.48T,*; predictive     |
|    |   | prof |    |                 | equations: *Jpar,ni,Te,Ti*;   |
|    |   | core |    |                 | sources: *from DataBase*;     |
|    |   | sour |    |                 | Transport: *BgB*; Impurity:   |
|    |   | ce   |    |                 | *OFF*]                        |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
