.. _tcv_410a_shots:

TCV 4.10a shots
===============

Following simulations are available for TCV machine in UAL 4.10a:

The shots can be accessed from the private data bases of IMP3
contributors by selecting the TOKAMAKNAME = *tcv* and the UAL version =
*4.10a*

*There are two ways to copy the data to your local data base:* You can
copy them directly from the data provider data base as it is mentioned
in the table:

::

   cp ~user/public/itmdb/itm_tree/tcv/4.10a/mdsplus/0/euitm_ShotRun.* $MDSPLUS_TREE_BASE_0/.

You can check out the data from svn:

::

   svn co --force https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/DATA/TCV $(MDSPLUS_TREE_BASE_0)

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
| *3 | * | equi | de | ETS/SPIDER/BGB/ | ETS predictive ad hoc run     |
| 80 | 2 | libr | nk | GAUSS           | [time: *0.1-1.1*;             |
| 12 | * | ium  | a  |                 | composition: *e,D*;           |
| *  |   | core |    |                 | ip=\ *0.65MA* Bt=\ *1.5T,*;   |
|    |   | prof |    |                 | predictive equations:         |
|    |   | core |    |                 | *Jpar,Ti,Te*; sources: *GAUSS |
|    |   | sour |    |                 | [0.6 MW to el]*; Transport:   |
|    |   | ce   |    |                 | *BGB*; Impurity: *OFF*]       |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| *3 | * | equi | de | ETS/CHEASE/BGB/ | ETS predictive ad hoc run     |
| 80 | 3 | libr | nk | GAUSS/IMPURITY  | [time: *0.1-1.1*;             |
| 12 | * | ium  | a  |                 | composition: *e,D,C*;         |
| *  |   | core |    |                 | ip=\ *0.65MA* Bt=\ *1.5T,*;   |
|    |   | prof |    |                 | predictive equations:         |
|    |   | core |    |                 | *Jpar,Ti,Te,nz*; sources:     |
|    |   | sour |    |                 | *GAUSS [0.6 MW to el]*;       |
|    |   | ce   |    |                 | Transport: *BGB*; Impurity:   |
|    |   | core |    |                 | *ON*]                         |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

