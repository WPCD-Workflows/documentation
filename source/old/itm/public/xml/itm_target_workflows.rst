.. _itm_target_workflows:

Target Workflows
================

+------------------+------------------------------------------+--------+
| Target           | Needed elements                          | Timefr |
|                  |                                          | ame    |
|                  |                                          | (tenta |
|                  |                                          | tive)  |
+==================+==========================================+========+
| Current ramp up  | -  Transport models                      | 07/201 |
| simulation       | -  NCLASS (or equivalent)                | 1      |
|                  | -  free boundary equilibrium code        |        |
+------------------+------------------------------------------+--------+
| ECRH             | -  equilibrium                           | 07/201 |
|                  | -  plasma background                     | 1      |
|                  | -  antennas; machine description         |        |
|                  | -  modulation                            |        |
+------------------+------------------------------------------+--------+
| ECRH + MHD       | -  NTM                                   | end    |
|                  | -  ecrh                                  | 2012   |
|                  | -  2d/3d profile (?)                     |        |
|                  | -  3d (?) equilibrium                    |        |
|                  | -  need communication that bypasses ETS  |        |
+------------------+------------------------------------------+--------+
| ICRF waves       | -  equilibrium                           | 03/201 |
|                  | -  plasma background                     | 1      |
|                  | -  antennas; machine description         |        |
+------------------+------------------------------------------+--------+
| NBI              | -  Import previous benchmarks between    | end    |
|                  |    ASCOT/TRANSP/PENCIL from JET          | 2011   |
|                  |    (exp2ITM)                             |        |
+------------------+------------------------------------------+--------+
| Fokker-Planck    |                                          | 2012   |
|                  |                                          | --     |
|                  |                                          | 2013   |
+------------------+------------------------------------------+--------+
| Fast particles   |                                          | 2012   |
| losses to walls  |                                          | --     |
|                  |                                          | 2013   |
+------------------+------------------------------------------+--------+
| Coupling of      |                                          | 2012   |
| ICRH/LH waves    |                                          | --     |
|                  |                                          | 2016   |
+------------------+------------------------------------------+--------+
| Scan over shots  | -  UALinit and UALcollector both inside  | implem |
|                  |    loop                                  | ented, |
|                  |                                          | being  |
|                  |                                          | tested |
+------------------+------------------------------------------+--------+
| Reflectometry    | -  turbulence                            | 10/201 |
|                  | -  equilibrium                           | 1      |
|                  | -  antenna                               |        |
|                  | -  coreprof                              |        |
|                  | -  edge                                  |        |
+------------------+------------------------------------------+--------+
| Stability with   | -  existing MHD stability chain with     | end    |
| linear           |    additional modules from IMP4          | 2011   |
| microstability   |                                          |        |
+------------------+------------------------------------------+--------+
| Stability with   | -  existing MHD stability chain with     | 10/201 |
| neoclassical     |    additional module (NCLASS or          | 1      |
|                  |    equivalent) from IMP4                 |        |
+------------------+------------------------------------------+--------+
| pellet ablation  | -  pellet module                         |        |
| workflow         | -  coreprof                              |        |
|                  | -  equilibrium                           |        |
|                  | -  synthetic diagnostics                 |        |
+------------------+------------------------------------------+--------+
| sawteeth         | -  coreprof                              | 2011   |
|                  | -  equilibrium                           | --     |
|                  | -  pellets                               | 2014   |
|                  | -  icrh (including fast particle         |        |
|                  |    redistribution and fast particle      |        |
|                  |    stabilization)                        |        |
|                  | -  ecrh                                  |        |
|                  | -  (?) 3D equilibrium with anisotropy    |        |
+------------------+------------------------------------------+--------+
| effect of fast   | -  equilibrium                           | 2011   |
| particles on     | -  coreprof                              | --     |
| Alfvenic modes   | -  modification of energetic partcile    | 2014   |
|                  |    distribution by Alfven Eigenmodes     |        |
|                  | -  sources of fast particles (ICRH, NBI, |        |
|                  |    fusion)                               |        |
|                  | -  later non-linear MHD                  |        |
+------------------+------------------------------------------+--------+
| Stability with   | -  existing MHD stability chain with     | 07/201 |
| fast particles   |    additional modules from IMP5          | 1      |
| (I)              |    ("LEMAN")                             |        |
+------------------+------------------------------------------+--------+
| Stability with   | -  existing MHD stability chain with     | end    |
| fast particles   |    additional modules from IMP5          | 2011   |
| (II)             |    ("LEMAN"); ETS type workflow          |        |
+------------------+------------------------------------------+--------+
| Feedback control | -  free boundary equilibrium             | 2011   |
|                  | -  ntm                                   | --     |
|                  | -  sawteeth                              | 2012   |
|                  | -  beta                                  |        |
|                  | -  synthetic diagnostics (EDRG)          |        |
|                  | -  modules need to accept information    |        |
|                  |    from controllers (moving mirrors ,    |        |
|                  |    ...)                                  |        |
+------------------+------------------------------------------+--------+
| Edge             | -  coreprof                              | end    |
|                  | -  equilibrium (grid generator)          | 2012   |
|                  | -  edge (SOLPS, ASPOEL)                  |        |
|                  | -  machine description (wall, pumping)   |        |
|                  | -  neutrals in core out to real wall     |        |
+------------------+------------------------------------------+--------+
| surface/plasma   | -  above ("edge") + ERO                  | end    |
| interaction      |                                          | 2013   |
+------------------+------------------------------------------+--------+
| mimic "chain2"   | -  100 -- 1000 snapshots / discharge     | 03/201 |
|                  | -  20 (or more) radial points            | 1      |
|                  | -  equilibrium (EQUAL)                   |        |
|                  | -  heating (FPSIM - PION-equivalent,     |        |
|                  |    except lacking IC/NBI coupling; ECRH; |        |
|                  |    NBI)                                  |        |
|                  | -  transport coefficients (derived from  |        |
|                  |    profiles and sources --- ETS must be  |        |
|                  |    able to work in interpretive mode)    |        |
|                  | -  used to produce reference core        |        |
|                  |    profiles on JET (Te, ne, ... [1d])    |        |
|                  | -  run time at JET approximately 10      |        |
|                  |    hours                                 |        |
+------------------+------------------------------------------+--------+
| beat TRANSP      | -  interpretive mode (nubeam replaced by | end    |
|                  |    ASCOT)                                | 2011   |
|                  | -  predictive; sytnthetic diagnostics    |        |
+------------------+------------------------------------------+--------+
| ELMs             | 1. edge stability                        | first  |
|                  |                                          | part:  |
|                  |    -  ETS                                | 03/201 |
|                  |    -  equilibrium                        | 1      |
|                  |    -  neoclassic                         |        |
|                  |    -  linear stability                   |        |
|                  |                                          |        |
|                  | 2. build database                        |        |
|                  | 3. build transport models                |        |
|                  |                                          |        |
|                  |    -  continuous ELM                     |        |
|                  |    -  ELM resolved                       |        |
+------------------+------------------------------------------+--------+
| current drive    | -  equilibrium reconstruction            |        |
| and heating      | -  heating and current drive             |        |
|                  | -  comparison with experiment            |        |
+------------------+------------------------------------------+--------+
| SOL turbulence   | -  simulated SOL turbulence              |        |
|                  | -  experimental Langmuir probe data      |        |
+------------------+------------------------------------------+--------+

ETS 2010-09
-----------

For a full tutorial on how to run the ETS under KEPLER check this `User
Guide <../../../imp3/public/imports/imp3_ETS_in_KEPLER.pdf>`__

$
