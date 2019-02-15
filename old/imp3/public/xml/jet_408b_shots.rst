.. _jet_408b_shots:

JET 4.08b shots
===============

Following simulations are available for JET machine in UAL 4.08b:

The shots can be accessed by setting

::

   TOKAMAKNAME = jet

   UAL = 4.08b

+----+---+------+----+-----------------+-------------------------------+
| Sh | R | CPOs | us | generated with  | description                   |
| ot | u |      | er |                 |                               |
|    | n |      |    |                 |                               |
+====+===+======+====+=================+===============================+
| 71 | 2 | equi | co | ETS with EMEQ   | Start from a JET case (no     |
| 82 | 1 | libr | st |                 | impurities, psi equation      |
| 7  |   | ium  | er |                 | only); PSI, BR, BZ, BPHI      |
|    |   | core |    |                 | (R,Z) from                    |
|    |   | prof |    |                 | equilibrium_augmenter         |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 71 | 2 | equi | co | ETS with EMEQ   | Start from a JET case (no     |
| 82 | 2 | libr | st |                 | impurities, psi and density   |
| 7  |   | ium  | er |                 | equations only); PSI, BR, BZ, |
|    |   | core |    |                 | BPHI (R,Z) from               |
|    |   | prof |    |                 | equilibrium_augmenter         |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 71 | 2 | equi | co | ETS with EMEQ   | Start from a JET case (with C |
| 82 | 3 | libr | st |                 | as an impurity, psi and       |
| 7  |   | ium  | er |                 | density equations only); PSI, |
|    |   | core |    |                 | BR, BZ, BPHI (R,Z) from       |
|    |   | prof |    |                 | equilibrium_augmenter         |
|    |   | core |    |                 |                               |
|    |   | sour |    |                 |                               |
|    |   | ce   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | tran |    |                 |                               |
|    |   | sp   |    |                 |                               |
|    |   | core |    |                 |                               |
|    |   | impu |    |                 |                               |
|    |   | r    |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+
| 78 | 1 | equi | co | test_equilibriu | PSI, BR, BZ, BPHI (R,Z) from  |
| 09 | 0 | libr | st | m_augmenter     | equilibrium_augmenter added   |
| 2  | 0 | ium  | er |                 | to konz/78092/3               |
|    | 0 |      |    |                 |                               |
|    | 3 |      |    |                 |                               |
+----+---+------+----+-----------------+-------------------------------+

