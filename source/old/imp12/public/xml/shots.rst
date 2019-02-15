.. _imp12_shots:

IMP12 Shots
===========

Shots stored in the private data base of IMP12 members are generally not
validated. Please do not publish without contacting the data provider.

ITER shots
----------

The shots can be accessed by setting

::

   TOKAMAKNAME = iter

UAL Version 4.08b
~~~~~~~~~~~~~~~~~

The shots can be accessed by setting

::

   UAL = 4.08b

The following table lists the shot by shot number and run number
together with the list of stored CPOs, the user name of the data base,
and a short description.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| 1  | 2 | equi | ko | euforia2ual_j_a | j-\( \\alpha \\) scan through |
|    |   | libr | nz | lpha            | modification of the pedestal  |
|    |   | ium  |    |                 | height between 50% and 150%   |
|    |   | mhd  |    |                 | of the reference equilibrium  |
|    |   |      |    |                 | together with linear MHD      |
|    |   |      |    |                 | stability analysis The scan   |
|    |   |      |    |                 | is done in 10% steps. The 121 |
|    |   |      |    |                 | different cases are stored in |
|    |   |      |    |                 | time slices starting from     |
|    |   |      |    |                 | 0.0s with 1.0s steps where    |
|    |   |      |    |                 | scale_p=0.5 and scale_j=0.5   |
|    |   |      |    |                 | is the first entry and        |
|    |   |      |    |                 | scale_j is looped over faster |
|    |   |      |    |                 | (e.g., scale_p=0.6,           |
|    |   |      |    |                 | scale_j=0.5 is stored in time |
|    |   |      |    |                 | slice t=0.0s+11s=11.0s).      |
+----+---+------+----+-----------------+-------------------------------+
| 3  | e | konz | eu | \\( \\beta_{\rm |                               |
|    | q |      | fo | N} \\) scan     |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the entire      |                               |
|    | i |      | l_ | pressure        |                               |
|    | b |      | j_ | profile between |                               |
|    | r |      | al | 50% and 150% of |                               |
|    | i |      | ph | the reference   |                               |
|    | u |      | a  | equilibrium     |                               |
|    | m |      |    | together with   |                               |
|    | m |      |    | linear MHD      |                               |
|    | h |      |    | stability       |                               |
|    | d |      |    | analysis The    |                               |
|    |   |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 11 different    |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 0.0s with  |                               |
|    |   |      |    | 1.0s steps      |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_beta=0.5  |                               |
|    |   |      |    | is the first    |                               |
|    |   |      |    | entry (e.g.,    |                               |
|    |   |      |    | scale_beta=1.0  |                               |
|    |   |      |    | is stored in    |                               |
|    |   |      |    | time slice      |                               |
|    |   |      |    | t=0.0s+5s=5.0s) |                               |
|    |   |      |    | .               |                               |
+----+---+------+----+-----------------+-------------------------------+
| 4  | e | konz | eu | \\( \\beta_{\rm |                               |
|    | q |      | fo | N} \\) scan     |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the core        |                               |
|    | i |      | l_ | pressure        |                               |
|    | b |      | j_ | profile only    |                               |
|    | r |      | al | between 50% and |                               |
|    | i |      | ph | 150% of the     |                               |
|    | u |      | a  | reference       |                               |
|    | m |      |    | equilibrium     |                               |
|    | m |      |    | together with   |                               |
|    | h |      |    | linear MHD      |                               |
|    | d |      |    | stability       |                               |
|    |   |      |    | analysis The    |                               |
|    |   |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 11 different    |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 0.0s with  |                               |
|    |   |      |    | 1.0s steps      |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_beta=0.5  |                               |
|    |   |      |    | is the first    |                               |
|    |   |      |    | entry (e.g.,    |                               |
|    |   |      |    | scale_beta=1.0  |                               |
|    |   |      |    | is stored in    |                               |
|    |   |      |    | time slice      |                               |
|    |   |      |    | t=0.0s+5s=5.0s) |                               |
|    |   |      |    | .               |                               |
+----+---+------+----+-----------------+-------------------------------+

JET shots
---------

The shots can be accessed by setting

::

   TOKAMAKNAME = jet

UAL Version 4.08a
~~~~~~~~~~~~~~~~~

The shots can be accessed by setting

::

   UAL = 4.08a

The following table lists the shot by shot number and run number
together with the list of stored CPOs, the user name of the data base,
and a short description.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| 78 | 1 | magd | ko | exp2itm         | time trace of experimental    |
| 09 |   | iag  | nz |                 | signals for equilibrium       |
| 2  |   | pfsy |    |                 | reconstruction                |
|    |   | stem |    |                 |                               |
|    |   | s    |    |                 |                               |
|    |   | toro |    |                 |                               |
|    |   | idfi |    |                 |                               |
|    |   | eld  |    |                 |                               |
|    |   | limi |    |                 |                               |
|    |   | ter  |    |                 |                               |
|    |   | iron |    |                 |                               |
|    |   | mode |    |                 |                               |
|    |   | l    |    |                 |                               |
|    |   | msed |    |                 |                               |
|    |   | iag  |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 2  | e | konz | eq | free boundary   |                               |
|    | q |      | ua | equilibrium at  |                               |
|    | u |      | ls | t=50s           |                               |
|    | i |      | li |                 |                               |
|    | l |      | ce |                 |                               |
|    | i |      |    |                 |                               |
|    | b |      |    |                 |                               |
|    | r |      |    |                 |                               |
|    | i |      |    |                 |                               |
|    | u |      |    |                 |                               |
|    | m |      |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 3  | e | konz | eq | fixed boundary  |                               |
|    | q |      | ua | equilibrium up  |                               |
|    | u |      | l_ | to separatrix   |                               |
|    | i |      | he | at t=50s        |                               |
|    | l |      | le |                 |                               |
|    | i |      | na |                 |                               |
|    | b |      |    |                 |                               |
|    | r |      |    |                 |                               |
|    | i |      |    |                 |                               |
|    | u |      |    |                 |                               |
|    | m |      |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 4  | m | konz | eq | linear MHD      |                               |
|    | h |      | ua | stability for   |                               |
|    | d |      | l_ | n=-3..-5 at     |                               |
|    |   |      | he | t=50s (stable)  |                               |
|    |   |      | le |                 |                               |
|    |   |      | na |                 |                               |
|    |   |      | _i |                 |                               |
|    |   |      | ls |                 |                               |
|    |   |      | a  |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

ASDEX Upgrade shots
-------------------

The shots can be accessed by setting

::

   TOKAMAKNAME = aug

UAL Version 4.08a
~~~~~~~~~~~~~~~~~

The shots can be accessed by setting

::

   UAL = 4.08a

The following table lists the shot by shot number and run number
together with the list of stored CPOs, the user name of the data base,
and a short description.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| 20 | 2 | equi | ko | progen_helena_a | improved H-mode (type-I ELMs) |
| 11 |   | libr | nz | ug              | \\(I_{\rm p} = 1 \\rm{MA}\),  |
| 6  |   | ium  |    |                 | \\( n_{\rm e} = 6.25 \\cdot   |
|    |   |      |    |                 | 10^{19} m^{-3}\), \\( B_{\rm  |
|    |   |      |    |                 | t} = -2.392 T\), \\(q_{95} =  |
|    |   |      |    |                 | 4.522 \\) at t=2.25s with 5   |
|    |   |      |    |                 | MW NBI and 3.6 MW ICRH fixed  |
|    |   |      |    |                 | boundary equilibrium cut at   |
|    |   |      |    |                 | 99.3% of \\(\psi_{\rm         |
|    |   |      |    |                 | bound}\)                      |
+----+---+------+----+-----------------+-------------------------------+
| 3  | e | konz | pr | improved H-mode |                               |
|    | q |      | og | (type-I ELMs)   |                               |
|    | u |      | en | \\(I_{\rm p} =  |                               |
|    | i |      | _h | 1 \\rm{MA}\),   |                               |
|    | l |      | el | \\( n_{\rm e} = |                               |
|    | i |      | en | 6.25 \\cdot     |                               |
|    | b |      | a_ | 10^{19}         |                               |
|    | r |      | au | m^{-3}\), \\(   |                               |
|    | i |      | g  | B_{\rm t} =     |                               |
|    | u |      |    | -2.392 T\),     |                               |
|    | m |      |    | \\(q_{95} =     |                               |
|    |   |      |    | 4.522 \\) at    |                               |
|    |   |      |    | t=3.59s with    |                               |
|    |   |      |    | 7.5 MW NBI and  |                               |
|    |   |      |    | 3.6 MW ICRH     |                               |
|    |   |      |    | fixed boundary  |                               |
|    |   |      |    | equilibrium cut |                               |
|    |   |      |    | at 99.3% of     |                               |
|    |   |      |    | \\(\psi_{\rm    |                               |
|    |   |      |    | bound}\)        |                               |
+----+---+------+----+-----------------+-------------------------------+
| 4  | e | konz | pr | improved H-mode |                               |
|    | q |      | og | (type-I ELMs)   |                               |
|    | u |      | en | \\(I_{\rm p} =  |                               |
|    | i |      | _h | 1 \\rm{MA}\),   |                               |
|    | l |      | el | \\( n_{\rm e} = |                               |
|    | i |      | en | 6.25 \\cdot     |                               |
|    | b |      | a_ | 10^{19}         |                               |
|    | r |      | au | m^{-3}\), \\(   |                               |
|    | i |      | g  | B_{\rm t} =     |                               |
|    | u |      |    | -2.392 T\),     |                               |
|    | m |      |    | \\(q_{95} =     |                               |
|    |   |      |    | 4.522 \\) at    |                               |
|    |   |      |    | t=5.09s with 10 |                               |
|    |   |      |    | MW NBI and 3.6  |                               |
|    |   |      |    | MW ICRH fixed   |                               |
|    |   |      |    | boundary        |                               |
|    |   |      |    | equilibrium cut |                               |
|    |   |      |    | at 99.3% of     |                               |
|    |   |      |    | \\(\psi_{\rm    |                               |
|    |   |      |    | bound}\)        |                               |
+----+---+------+----+-----------------+-------------------------------+
| 5  | e | konz | pr | improved H-mode |                               |
|    | q |      | og | (type-I ELMs)   |                               |
|    | u |      | en | \\(I_{\rm p} =  |                               |
|    | i |      | _h | 1 \\rm{MA}\),   |                               |
|    | l |      | el | \\( n_{\rm e} = |                               |
|    | i |      | en | 6.25 \\cdot     |                               |
|    | b |      | a_ | 10^{19}         |                               |
|    | r |      | il | m^{-3}\), \\(   |                               |
|    | i |      | sa | B_{\rm t} =     |                               |
|    | u |      | _a | -2.392 T\),     |                               |
|    | m |      | ug | \\(q_{95} =     |                               |
|    | m |      |    | 4.522 \\) at    |                               |
|    | h |      |    | t=2.25s with 5  |                               |
|    | d |      |    | MW NBI and 3.6  |                               |
|    |   |      |    | MW ICRH fixed   |                               |
|    |   |      |    | boundary        |                               |
|    |   |      |    | equilibrium cut |                               |
|    |   |      |    | at 99.3% of     |                               |
|    |   |      |    | \\(\psi_{\rm    |                               |
|    |   |      |    | bound}\) and    |                               |
|    |   |      |    | linear MHD      |                               |
|    |   |      |    | stability       |                               |
|    |   |      |    | spectrum        |                               |
|    |   |      |    | (peeling-balloo |                               |
|    |   |      |    | ning            |                               |
|    |   |      |    | modes)          |                               |
+----+---+------+----+-----------------+-------------------------------+
| 6  | e | konz | pr | improved H-mode |                               |
|    | q |      | og | (type-I ELMs)   |                               |
|    | u |      | en | \\(I_{\rm p} =  |                               |
|    | i |      | _h | 1 \\rm{MA}\),   |                               |
|    | l |      | el | \\( n_{\rm e} = |                               |
|    | i |      | en | 6.25 \\cdot     |                               |
|    | b |      | a_ | 10^{19}         |                               |
|    | r |      | il | m^{-3}\), \\(   |                               |
|    | i |      | sa | B_{\rm t} =     |                               |
|    | u |      | _a | -2.392 T\),     |                               |
|    | m |      | ug | \\(q_{95} =     |                               |
|    | m |      |    | 4.522 \\) at    |                               |
|    | h |      |    | t=3.59s with    |                               |
|    | d |      |    | 7.5 MW NBI and  |                               |
|    |   |      |    | 3.6 MW ICRH     |                               |
|    |   |      |    | fixed boundary  |                               |
|    |   |      |    | equilibrium cut |                               |
|    |   |      |    | at 99.3% of     |                               |
|    |   |      |    | \\(\psi_{\rm    |                               |
|    |   |      |    | bound}\) and    |                               |
|    |   |      |    | linear MHD      |                               |
|    |   |      |    | stability       |                               |
|    |   |      |    | spectrum        |                               |
|    |   |      |    | (peeling-balloo |                               |
|    |   |      |    | ning            |                               |
|    |   |      |    | modes)          |                               |
+----+---+------+----+-----------------+-------------------------------+
| 7  | e | konz | pr | improved H-mode |                               |
|    | q |      | og | (type-I ELMs)   |                               |
|    | u |      | en | \\(I_{\rm p} =  |                               |
|    | i |      | _h | 1 \\rm{MA}\),   |                               |
|    | l |      | el | \\( n_{\rm e} = |                               |
|    | i |      | en | 6.25 \\cdot     |                               |
|    | b |      | a_ | 10^{19}         |                               |
|    | r |      | il | m^{-3}\), \\(   |                               |
|    | i |      | sa | B_{\rm t} =     |                               |
|    | u |      | _a | -2.392 T\),     |                               |
|    | m |      | ug | \\(q_{95} =     |                               |
|    | m |      |    | 4.522 \\) at    |                               |
|    | h |      |    | t=5.09s with 10 |                               |
|    | d |      |    | MW NBI and 3.6  |                               |
|    |   |      |    | MW ICRH fixed   |                               |
|    |   |      |    | boundary        |                               |
|    |   |      |    | equilibrium cut |                               |
|    |   |      |    | at 99.3% of     |                               |
|    |   |      |    | \\(\psi_{\rm    |                               |
|    |   |      |    | bound}\) and    |                               |
|    |   |      |    | linear MHD      |                               |
|    |   |      |    | stability       |                               |
|    |   |      |    | spectrum        |                               |
|    |   |      |    | (peeling-balloo |                               |
|    |   |      |    | ning            |                               |
|    |   |      |    | modes)          |                               |
+----+---+------+----+-----------------+-------------------------------+
| 8  | e | konz | he | fixed boundary  |                               |
|    | q |      | le | equilibrium     |                               |
|    | u |      | na | (same as run 2) |                               |
|    | i |      | _a |                 |                               |
|    | l |      | ug |                 |                               |
|    | i |      |    |                 |                               |
|    | b |      |    |                 |                               |
|    | r |      |    |                 |                               |
|    | i |      |    |                 |                               |
|    | u |      |    |                 |                               |
|    | m |      |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 9  | m | konz | il | linear MHD      |                               |
|    | h |      | sa | stability       |                               |
|    | d |      | _a | analysis for    |                               |
|    |   |      | ug | run 8 (toroidal |                               |
|    |   |      |    | mode number n = |                               |
|    |   |      |    | 1 - 15),        |                               |
|    |   |      |    | peeling-balloon |                               |
|    |   |      |    | ing             |                               |
|    |   |      |    | mode            |                               |
+----+---+------+----+-----------------+-------------------------------+

UAL Version 4.08b
~~~~~~~~~~~~~~~~~

The shots can be accessed by setting

::

   UAL = 4.08b

The following table lists the shot by shot number and run number
together with the list of stored CPOs, the user name of the data base,
and a short description.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| 20 | 2 | equi | ko | progen_helena_a | improved H-mode (type-I ELMs) |
| 11 |   | libr | nz | ug              | \\(I_{\rm p} = 1 \\rm{MA}\),  |
| 6  |   | ium  |    |                 | \\( n_{\rm e} = 6.25 \\cdot   |
|    |   |      |    |                 | 10^{19} m^{-3}\), \\( B_{\rm  |
|    |   |      |    |                 | t} = -2.392 T\), \\(q_{95} =  |
|    |   |      |    |                 | 4.522 \\) at t=3.59s with 7.5 |
|    |   |      |    |                 | MW NBI and 3.6 MW ICRH fixed  |
|    |   |      |    |                 | boundary equilibrium cut at   |
|    |   |      |    |                 | 99.3% of \\(\psi_{\rm         |
|    |   |      |    |                 | bound}\)                      |
+----+---+------+----+-----------------+-------------------------------+
| 3  | e | konz | ja | j-\( \\alpha    |                               |
|    | q |      | lp | \\) modified    |                               |
|    | u |      | ha | equilibrium     |                               |
|    | i |      | _h | based on run 2  |                               |
|    | l |      | el | (scale_p=1.4,   |                               |
|    | i |      | en | scale_j=1.5)    |                               |
|    | b |      | a  |                 |                               |
|    | r |      |    |                 |                               |
|    | i |      |    |                 |                               |
|    | u |      |    |                 |                               |
|    | m |      |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 6  | m | konz | il | linear MHD      |                               |
|    | h |      | sa | stability       |                               |
|    | d |      | _a | analysis for    |                               |
|    |   |      | ug | run 2 (toroidal |                               |
|    |   |      |    | mode number n = |                               |
|    |   |      |    | 1 - 15),        |                               |
|    |   |      |    | peeling-balloon |                               |
|    |   |      |    | ing             |                               |
|    |   |      |    | mode            |                               |
+----+---+------+----+-----------------+-------------------------------+
| 10 | e | konz | eu | j-\( \\alpha    |                               |
|    | q |      | fo | \\) scan        |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the pedestal    |                               |
|    | i |      | l_ | height between  |                               |
|    | b |      | j_ | 50% and 150% of |                               |
|    | r |      | al | the reference   |                               |
|    | i |      | ph | equilibrium     |                               |
|    | u |      | a  | from run 2      |                               |
|    | m |      |    | together with   |                               |
|    | m |      |    | linear MHD      |                               |
|    | h |      |    | stability       |                               |
|    | d |      |    | analysis The    |                               |
|    |   |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 121 different   |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 3.59s with |                               |
|    |   |      |    | 1.0s steps      |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_p=0.5 and |                               |
|    |   |      |    | scale_j=0.5 is  |                               |
|    |   |      |    | the first entry |                               |
|    |   |      |    | and scale_j is  |                               |
|    |   |      |    | looped over     |                               |
|    |   |      |    | faster (e.g.,   |                               |
|    |   |      |    | scale_p=0.6,    |                               |
|    |   |      |    | scale_j=0.5 is  |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slice           |                               |
|    |   |      |    | t=3.59s+11s=14. |                               |
|    |   |      |    | 59s).           |                               |
+----+---+------+----+-----------------+-------------------------------+
| 11 | e | konz | eu | j-\( \\alpha    |                               |
|    | q |      | fo | \\) scan        |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the pedestal    |                               |
|    | i |      | l_ | width between   |                               |
|    | b |      | j_ | 50% and 150% of |                               |
|    | r |      | al | the reference   |                               |
|    | i |      | ph | equilibrium     |                               |
|    | u |      | a  | from run 2      |                               |
|    | m |      |    | together with   |                               |
|    | m |      |    | linear MHD      |                               |
|    | h |      |    | stability       |                               |
|    | d |      |    | analysis The    |                               |
|    |   |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 121 different   |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 3.59s with |                               |
|    |   |      |    | 1.0s steps      |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_p=0.5 and |                               |
|    |   |      |    | scale_j=0.5 is  |                               |
|    |   |      |    | the first entry |                               |
|    |   |      |    | and scale_j is  |                               |
|    |   |      |    | looped over     |                               |
|    |   |      |    | faster (e.g.,   |                               |
|    |   |      |    | scale_p=0.6,    |                               |
|    |   |      |    | scale_j=0.5 is  |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slice           |                               |
|    |   |      |    | t=3.59s+11s=14. |                               |
|    |   |      |    | 59s).           |                               |
+----+---+------+----+-----------------+-------------------------------+
| 12 | e | konz | eu | \\( \\beta_{\rm |                               |
|    | q |      | fo | N} \\) scan     |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the entire      |                               |
|    | i |      | l_ | pressure        |                               |
|    | b |      | j_ | profile between |                               |
|    | r |      | al | 50% and 150% of |                               |
|    | i |      | ph | the reference   |                               |
|    | u |      | a  | equilibrium     |                               |
|    | m |      |    | from run 2      |                               |
|    | m |      |    | together with   |                               |
|    | h |      |    | linear MHD      |                               |
|    | d |      |    | stability       |                               |
|    |   |      |    | analysis The    |                               |
|    |   |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 11 different    |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 3.59s with |                               |
|    |   |      |    | 1.0s steps      |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_beta=0.5  |                               |
|    |   |      |    | is the first    |                               |
|    |   |      |    | entry (e.g.,    |                               |
|    |   |      |    | scale_beta=1.0  |                               |
|    |   |      |    | is stored in    |                               |
|    |   |      |    | time slice      |                               |
|    |   |      |    | t=3.59s+5s=8.59 |                               |
|    |   |      |    | s).             |                               |
+----+---+------+----+-----------------+-------------------------------+
| 13 | e | konz | eu | \\( \\beta_{\rm |                               |
|    | q |      | fo | N} \\) scan     |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the core        |                               |
|    | i |      | l_ | pressure        |                               |
|    | b |      | j_ | profile only    |                               |
|    | r |      | al | between 50% and |                               |
|    | i |      | ph | 150% of the     |                               |
|    | u |      | a  | reference       |                               |
|    | m |      |    | equilibrium     |                               |
|    | m |      |    | from run 2      |                               |
|    | h |      |    | together with   |                               |
|    | d |      |    | linear MHD      |                               |
|    |   |      |    | stability       |                               |
|    |   |      |    | analysis The    |                               |
|    |   |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 11 different    |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 3.59s with |                               |
|    |   |      |    | 1.0s steps      |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_beta=0.5  |                               |
|    |   |      |    | is the first    |                               |
|    |   |      |    | entry (e.g.,    |                               |
|    |   |      |    | scale_beta=1.0  |                               |
|    |   |      |    | is stored in    |                               |
|    |   |      |    | time slice      |                               |
|    |   |      |    | t=3.59s+5s=8.59 |                               |
|    |   |      |    | s).             |                               |
+----+---+------+----+-----------------+-------------------------------+
| 23 | 3 | equi | ko | euforia2ual_j_a | j-\( \\alpha \\) scan through |
| 22 |   | libr | nz | lpha            | modification of the pedestal  |
| 3  |   | ium  |    |                 | height between 50% and 150%   |
|    |   | mhd  |    |                 | of the reference equilibrium  |
|    |   |      |    |                 | together with linear MHD      |
|    |   |      |    |                 | stability analysis The scan   |
|    |   |      |    |                 | is done in 10% steps. The 121 |
|    |   |      |    |                 | different cases are stored in |
|    |   |      |    |                 | time slices starting from     |
|    |   |      |    |                 | 5.325s with 1.0s steps where  |
|    |   |      |    |                 | scale_p=0.5 and scale_j=0.5   |
|    |   |      |    |                 | is the first entry and        |
|    |   |      |    |                 | scale_j is looped over faster |
|    |   |      |    |                 | (e.g., scale_p=0.6,           |
|    |   |      |    |                 | scale_j=0.5 is stored in time |
|    |   |      |    |                 | slice t=5.325s+11s=16.325s).  |
+----+---+------+----+-----------------+-------------------------------+
| 4  | e | konz | eu | j-\( \\alpha    |                               |
|    | q |      | fo | \\) scan        |                               |
|    | u |      | ri | through         |                               |
|    | i |      | a2 | modification of |                               |
|    | l |      | ua | the pedestal    |                               |
|    | i |      | l_ | width between   |                               |
|    | b |      | j_ | 50% and 150% of |                               |
|    | r |      | al | the reference   |                               |
|    | i |      | ph | equilibrium     |                               |
|    | u |      | a  | together with   |                               |
|    | m |      |    | linear MHD      |                               |
|    | m |      |    | stability       |                               |
|    | h |      |    | analysis The    |                               |
|    | d |      |    | scan is done in |                               |
|    |   |      |    | 10% steps. The  |                               |
|    |   |      |    | 121 different   |                               |
|    |   |      |    | cases are       |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slices starting |                               |
|    |   |      |    | from 5.325s     |                               |
|    |   |      |    | with 1.0s steps |                               |
|    |   |      |    | where           |                               |
|    |   |      |    | scale_p=0.5 and |                               |
|    |   |      |    | scale_j=0.5 is  |                               |
|    |   |      |    | the first entry |                               |
|    |   |      |    | and scale_j is  |                               |
|    |   |      |    | looped over     |                               |
|    |   |      |    | faster (e.g.,   |                               |
|    |   |      |    | scale_p=0.6,    |                               |
|    |   |      |    | scale_j=0.5 is  |                               |
|    |   |      |    | stored in time  |                               |
|    |   |      |    | slice           |                               |
|    |   |      |    | t=5.325s+11s=16 |                               |
|    |   |      |    | .325s).         |                               |
+----+---+------+----+-----------------+-------------------------------+

TEST shots
----------

The shots can be accessed by setting

::

   TOKAMAKNAME = test

UAL Version 4.08a
~~~~~~~~~~~~~~~~~

The shots can be accessed by setting

::

   UAL = 4.08a

The following table lists the shot by shot number and run number
together with the list of stored CPOs, the user name of the data base,
and a short description.

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| 1  | 2 | equi | ko | progen_helena_a | simple circular ballooning    |
|    |   | libr | nz | nalytic         | unstable equilibrium, high    |
|    |   | ium  |    |                 | resolution fixed boundary     |
|    |   |      |    |                 | equilibrium in straight field |
|    |   |      |    |                 | line coordinates              |
+----+---+------+----+-----------------+-------------------------------+
| 3  | e | konz | pr | same as run 2   |                               |
|    | q |      | og |                 |                               |
|    | u |      | en |                 |                               |
|    | i |      | _h |                 |                               |
|    | l |      | el |                 |                               |
|    | i |      | en |                 |                               |
|    | b |      | a_ |                 |                               |
|    | r |      | il |                 |                               |
|    | i |      | sa |                 |                               |
|    | u |      | _a |                 |                               |
|    | m |      | na |                 |                               |
|    | m |      | ly |                 |                               |
|    | h |      | ti |                 |                               |
|    | d |      | c  |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 4  | e | konz | ja | j-\( \\alpha    |                               |
|    | q |      | lp | \\) modified    |                               |
|    | u |      | ha | equilibrium     |                               |
|    | i |      | _h | based on run 2  |                               |
|    | l |      | el | (p_modulator%c_ |                               |
|    | i |      | en | 2=1.1,          |                               |
|    | b |      | a_ | j_modulator%c_2 |                               |
|    | r |      | an | =1.5)           |                               |
|    | i |      | al |                 |                               |
|    | u |      | yt |                 |                               |
|    | m |      | ic |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 5  | e | konz | ja | same as run 4   |                               |
|    | q |      | lp |                 |                               |
|    | u |      | ha |                 |                               |
|    | i |      | _h |                 |                               |
|    | l |      | el |                 |                               |
|    | i |      | en |                 |                               |
|    | b |      | a_ |                 |                               |
|    | r |      | il |                 |                               |
|    | i |      | sa |                 |                               |
|    | u |      | _a |                 |                               |
|    | m |      | na |                 |                               |
|    | m |      | ly |                 |                               |
|    | h |      | ti |                 |                               |
|    | d |      | c  |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

