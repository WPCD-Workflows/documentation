.. _demo1_410a_shots:

DEMO1 4.10a shots
=================

Following simulations are available for DEMO1 machine in UAL 4.10a:

*!!! DATA are based on the ITM test release and can not be used for the
scientific publications about DEMO*

The shots can be accessed from the private data bases of IMP3
contributors by selecting the TOKAMAKNAME = *demo1* and the UAL version
= *4.10a*

*There are two ways to copy the data to your local data base:* You can
copy them directly from the data provider data base as it is mentioned
in the table:

::

   cp ~user/public/itmdb/itm_tree/demo1/4.10a/mdsplus/0/euitm_ShotRun.* $MDSPLUS_TREE_BASE_0/.

You can check out the data from svn:

::

   svn co --force https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/DATA/DEMO1 $(MDSPLUS_TREE_BASE_0)

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
| *1 | * | equi | de | configured      | ETS input shot, *peaked       |
| *  | 1 | libr | nk | manually        | density profile* [time:       |
|    | * | ium  | a  |                 | *0.0*; composition: *e,D,T*;  |
|    |   | core |    |                 | ip=\ *16MA* Bt=\ *6.791T,*;   |
|    |   | prof |    |                 | plasma boundary is prescribed |
|    |   |      |    |                 | from earlier FBE simulations  |
|    |   |      |    |                 | / very shaped cross-section - |
|    |   |      |    |                 | difficult for equilibrium     |
|    |   |      |    |                 | solvers to work with]         |
+----+---+------+----+-----------------+-------------------------------+
| *1 | * | equi | de | configured      | ETS input shot,\ *peaked      |
| *  | 2 | libr | nk | manually        | density profile* [time:       |
|    | * | ium  | a  |                 | *0.0*; composition: *e,D,T*;  |
|    |   | core |    |                 | ip=\ *16MA* Bt=\ *6.791T,*;   |
|    |   | prof |    |                 | plasma boundary is defined    |
|    |   |      |    |                 | analiticaly]                  |
+----+---+------+----+-----------------+-------------------------------+
| *1 | * | equi | de | configured      | ETS input shot, *peaked       |
| *  | 1 | libr | nk | manually        | density profile* [time:       |
|    | 1 | ium  | a  |                 | *0.0*; composition: *e,D,T*;  |
|    | * | core |    |                 | ip=\ *16MA* Bt=\ *6.791T,*;   |
|    |   | prof |    |                 | slightly smoothed boundary    |
|    |   |      |    |                 | compared to the run 1]        |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | configured      | ETS input shot, *flat density |
| *  | 1 | libr | nk | manually        | profile* [time: *0.0*;        |
|    | 1 | ium  | a  |                 | composition: *e,D,T*;         |
|    | * | core |    |                 | ip=\ *16MA* Bt=\ *6.791T,*;   |
|    |   | prof |    |                 | slightly smoothed boundary    |
|    |   |      |    |                 | compared to the run 1]        |
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
| *1 | * | equi | de | ETS/BGB/ETB/GAU | ETS predictive ad hoc run /   |
| *  | 3 | libr | nk | SS              | *peaked density profile /     |
|    | * | ium  | a  |                 | shaped boundary* [time:       |
|    |   | core |    |                 | *0.1-1.0*; composition:       |
|    |   | prof |    |                 | *e,D,T*; ip=\ *16MA*          |
|    |   | core |    |                 | Bt=\ *6.791T,*; predictive    |
|    |   | sour |    |                 | equations: *Jpar,Ti,Te*;      |
|    |   | ce   |    |                 | sources: *GAUSS [10MW to el / |
|    |   | core |    |                 | 20MW to D /20 MW to T]*;      |
|    |   | tran |    |                 | Transport: *BGB+ETB(at        |
|    |   | sp   |    |                 | 0.97)*; Impurity: *OFF*]      |
+----+---+------+----+-----------------+-------------------------------+
| *1 | * | equi | de | ETS/BGB/ETB/GAU | ETS predictive ad hoc run /   |
| *  | 4 | libr | nk | SS              | *peaked density profile /     |
|    | * | ium  | a  |                 | analytical boundary* [time:   |
|    |   | core |    |                 | *0.0-1.0*; composition:       |
|    |   | prof |    |                 | *e,D,T*; ip=\ *16MA*          |
|    |   | core |    |                 | Bt=\ *6.791T,*; predictive    |
|    |   | sour |    |                 | equations: *Jpar,Ti,Te*;      |
|    |   | ce   |    |                 | sources: *GAUSS [10MW to el / |
|    |   | core |    |                 | 20MW to D /20 MW to T]*;      |
|    |   | tran |    |                 | Transport: *BGB+ETB(at        |
|    |   | sp   |    |                 | 0.97)*; Impurity: *OFF*]      |
+----+---+------+----+-----------------+-------------------------------+
| *1 | * | equi | de | ETS/CHEASE/BGB/ | ETS predictive ad hoc run /   |
| *  | 1 | libr | nk | ETB/GAUSS       | *peaked density profile /     |
|    | 2 | ium  | a  |                 | smoothed boundary* [time:     |
|    | * | core |    |                 | *0.0-1.0*; composition:       |
|    |   | prof |    |                 | *e,D,T*; ip=\ *16MA*          |
|    |   | core |    |                 | Bt=\ *6.791T,*; predictive    |
|    |   | sour |    |                 | equations: *Jpar,Ti,Te*;      |
|    |   | ce   |    |                 | sources: *GAUSS [10MW to el / |
|    |   | core |    |                 | 20MW to D /20 MW to T]*;      |
|    |   | tran |    |                 | Transport: *BGB+ETB(at        |
|    |   | sp   |    |                 | 0.97)*; Impurity: *OFF*]      |
+----+---+------+----+-----------------+-------------------------------+
| *1 | * | equi | de | ETS/CHEASE/BGB/ | ETS predictive run / *peaked  |
| *  | 1 | libr | nk | ETB/GAUSS       | density profile / smoothed    |
|    | 3 | ium  | a  |                 | boundary* [time: *0.0-1.0*;   |
|    | * | core |    |                 | composition: *e,D,T,Ar,W*;    |
|    |   | prof |    |                 | ip=\ *16MA* Bt=\ *6.791T,*;   |
|    |   | core |    |                 | predictive equations:         |
|    |   | sour |    |                 | *Jpar,Ti,Te,nz*; sources:     |
|    |   | ce   |    |                 | *GAUSS [26MW to el / 192MW to |
|    |   | core |    |                 | D / 192 MW to T]*; Transport: |
|    |   | tran |    |                 | *BGB+ETB(at 0.97)*; Impurity: |
|    |   | sp   |    |                 | *ON*; radiation fraction:     |
|    |   |      |    |                 | *50%*; current drive: *35%*;  |
|    |   |      |    |                 | Zeff: *3.0*]                  |
+----+---+------+----+-----------------+-------------------------------+
| *2 | * | equi | de | ETS/CHEASE/BGB/ | ETS predictive run / *flat    |
| *  | 1 | libr | nk | ETB/GAUSS       | density profile / smoothed    |
|    | 2 | ium  | a  |                 | boundary* [time: *0.0-1.0*;   |
|    | * | core |    |                 | composition: *e,D,T,Ar,W*;    |
|    |   | prof |    |                 | ip=\ *16MA* Bt=\ *6.791T,*;   |
|    |   | core |    |                 | predictive equations:         |
|    |   | sour |    |                 | *Jpar,Ti,Te,nz*; sources:     |
|    |   | ce   |    |                 | *GAUSS [26MW to el / 192MW to |
|    |   | core |    |                 | D / 192 MW to T]*; Transport: |
|    |   | tran |    |                 | *BGB+ETB(at 0.97)*; Impurity: |
|    |   | sp   |    |                 | *ON*; radiation fraction:     |
|    |   |      |    |                 | *50%*; current drive: *35%*;  |
|    |   |      |    |                 | Zeff: *3.0*]                  |
+----+---+------+----+-----------------+-------------------------------+
