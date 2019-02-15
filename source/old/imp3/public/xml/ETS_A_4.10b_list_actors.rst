.. _ETS_A_4.10b_list_actors:

LIST OF ACTORS
==============

UNDER DEVELOPMENT

.. _ETS_A_4.10b_list_actors_Equilibrium:

Equilibrium actors
------------------

+-------+-------+---------+--------------------------------------------+
| Code  | Code  | Contact | Short description                          |
| name  | Categ | persons |                                            |
|       | ory   |         |                                            |
+=======+=======+=========+============================================+
| cheas | Grad- | Olivier | Chease is a fixed boundary Grad-Shafranov  |
| e     | Shafr | Sauter  | solver based on cubic hermitian finite     |
|       | anov  |         | elements see [`H. Lütjens, A. Bondeson, O. |
|       | solve |         | Sauter, Computer Physics Communications 97 |
|       | r     |         | (1996)                                     |
|       |       |         | 219-260 <https://crppwww.epfl.ch/~sauter/c |
|       |       |         | hease/Lutjens_CHEASE_CPC96.pdf>`__]        |
+-------+-------+---------+--------------------------------------------+
| emeq  | -     | -       |                                            |
+-------+-------+---------+--------------------------------------------+
| spide | -     | -       |                                            |
| r     |       |         |                                            |
+-------+-------+---------+--------------------------------------------+

.. _ETS_A_4.10b_list_actors_CoreTransport:

Core transport actors
---------------------

+-------+-------+---------+--------------------------------------------+
| Code  | Code  | Contact | Short description                          |
| name  | Categ | persons |                                            |
|       | ory   |         |                                            |
+=======+=======+=========+============================================+
| ETS   | Trans | Denis   |                                            |
|       | port  | Kalupin |                                            |
|       | solve |         |                                            |
|       | r     |         |                                            |
+-------+-------+---------+--------------------------------------------+
| BohmG | Bohm/ | -       |                                            |
| B     | gyro- |         |                                            |
|       | Bohm  |         |                                            |
|       | trans |         |                                            |
|       | port  |         |                                            |
|       | coeff |         |                                            |
|       | icien |         |                                            |
|       | ts    |         |                                            |
+-------+-------+---------+--------------------------------------------+
| TCI/W | Trans | Pär     |                                            |
| eilan | port  | Strand  |                                            |
| d     | coeff |         |                                            |
|       | icien |         |                                            |
|       | t     |         |                                            |
|       | from  |         |                                            |
|       | drift |         |                                            |
|       | wave  |         |                                            |
|       | turbu |         |                                            |
|       | lence |         |                                            |
+-------+-------+---------+--------------------------------------------+
| TCI/G | Trans | -       |                                            |
| LF23  | port  |         |                                            |
|       | coeff |         |                                            |
|       | icien |         |                                            |
|       | t     |         |                                            |
|       | from  |         |                                            |
|       | drift |         |                                            |
|       | wave  |         |                                            |
|       | turbu |         |                                            |
|       | lence |         |                                            |
+-------+-------+---------+--------------------------------------------+
| TCI/R | Trans | -       |                                            |
| ITM   | port  |         |                                            |
|       | coeff |         |                                            |
|       | icien |         |                                            |
|       | t     |         |                                            |
|       | from  |         |                                            |
|       | drift |         |                                            |
|       | wave  |         |                                            |
|       | turbu |         |                                            |
|       | lence |         |                                            |
+-------+-------+---------+--------------------------------------------+
| TCI/M | Trans | -       |                                            |
| MM    | port  |         |                                            |
| (not  | coeff |         |                                            |
| yet   | icien |         |                                            |
| in    | t     |         |                                            |
| ETS)  | from  |         |                                            |
|       | drift |         |                                            |
|       | wave  |         |                                            |
|       | turbu |         |                                            |
|       | lence |         |                                            |
+-------+-------+---------+--------------------------------------------+
| TCI/E | Trans | -       |                                            |
| DWM   | port  |         |                                            |
| (not  | coeff |         |                                            |
| yet   | icien |         |                                            |
| in    | t     |         |                                            |
| ETS)  | from  |         |                                            |
|       | drift |         |                                            |
|       | wave  |         |                                            |
|       | turbu |         |                                            |
|       | lence |         |                                            |
+-------+-------+---------+--------------------------------------------+
| nclas | Neocl | Pär     |                                            |
| s     | assic | Strand  |                                            |
| (not  | al    |         |                                            |
| yet   | trans |         |                                            |
| in    | port  |         |                                            |
| ETS)  | coeff |         |                                            |
|       | icien |         |                                            |
|       | ts    |         |                                            |
+-------+-------+---------+--------------------------------------------+
| neos  | Neocl | Olivier |                                            |
| (not  | assic | Sauter  |                                            |
| yet   | al    |         |                                            |
| in    | trans |         |                                            |
| ETS)  | port  |         |                                            |
|       | coeff |         |                                            |
|       | icien |         |                                            |
|       | ts    |         |                                            |
+-------+-------+---------+--------------------------------------------+
| neowe | Neocl | Bruce   | Neoclassical transport coefficients based  |
| sz    | assic | Scott   | on the expression in John Wesson's book    |
|       | al    |         | Tokamaks.                                  |
|       | trans |         |                                            |
|       | port  |         |                                            |
|       | coeff |         |                                            |
|       | icien |         |                                            |
|       | ts    |         |                                            |
+-------+-------+---------+--------------------------------------------+
| neoar | Neocl | Bruce   |                                            |
| tz    | assic | Scott   |                                            |
|       | al    |         |                                            |
|       | trans |         |                                            |
|       | port  |         |                                            |
|       | coeff |         |                                            |
|       | icien |         |                                            |
|       | ts    |         |                                            |
+-------+-------+---------+--------------------------------------------+
| spitz |       |         |                                            |
| er    |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| ETBtr |       |         |                                            |
| anspo |       |         |                                            |
| rt    |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| coron |       |         |                                            |
| al    |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| synch |       |         |                                            |
| rotro |       |         |                                            |
| nsour |       |         |                                            |
| ces   |       |         |                                            |
+-------+-------+---------+--------------------------------------------+

.. _ETS_A_4.10b_list_actors_Edge:

Edge transport actors
---------------------

.. _ETS_A_4.10b_list_actors_HCD:

Heating and current drive actors
--------------------------------

+-------+-------+---------+--------------------------------------------+
| Code  | Code  | Contact | Short description                          |
| name  | Categ | persons |                                            |
|       | ory   |         |                                            |
+=======+=======+=========+============================================+
| `gray | EC/wa | Lorenzo | GRAY is a quasi-optical ray-tracing code   |
|  <#im | ves   | Figini  | for electron cyclotron heating & current   |
| p5_li |       |         | drive calculations in tokamaks.            |
| stcod |       |         | Code-parameter documentation can be found  |
| es_gr |       |         | `here <imp5_code_parameter_documentation_l |
| ay>`_ |       |         | ion.html>`__.                              |
| _     |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `trav | EC/wa | Nikolai | Travis is a ray-tracing code for electron  |
| is <# | ves   | Marushc | cyclotron heating & current drive          |
| imp5_ |       | henko   | calculations in tokamaks.                  |
| listc |       | and     |                                            |
| odes_ |       | Lorenzo |                                            |
| travi |       | Figini  |                                            |
| s>`__ |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `Torr | EC/wa | Egbert  | Torray-FOM is a ray-tracing code for       |
| ay-FO | ves   | Westerh | electron cyclotron heating & current drive |
| M <#i |       | of      | calculations in tokamaks.                  |
| mp5_l |       |         |                                            |
| istco |       |         |                                            |
| des_t |       |         |                                            |
| ravis |       |         |                                            |
| >`__  |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `bbnb | NBI/s | Otto    | Calculate the deposition rates of neutrals |
| i <#i | ource | Asunta  | beam particles, i.e. the input source for  |
| mp5_l |       |         | Fokker-Planck solvers (not the heating and |
| istco |       |         | current drive). Note that the number of    |
| des_b |       |         | markers generated by BBNBI is described by |
| bnbi> |       |         | the kepler variable number_nbi_markers_in. |
| `__   |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `nemo | NBI/s | Mireill | Calculate the deposition rates of neutrals |
|  <#im | ource | e       | beam particles, i.e. the input source for  |
| p5_li |       | Schneid | Fokker-Planck solvers (not the heating and |
| stcod |       | er      | current drive). Code-parameter             |
| es_bb |       |         | documentation can be found                 |
| nbi>` |       |         | `here <imp5_code_parameter_documentation_n |
| __    |       |         | emo.html>`__.                              |
+-------+-------+---------+--------------------------------------------+
| `nucl | nucle | Thomas  | Simple code for nuclear sources from       |
| earsi | ar/so | Johnson | thermal/thermal reactions. Code-parameter  |
| m <#i | urce  |         | documentation can be found                 |
| mp5_l |       |         | `here <imp5_code_parameter_documentation_n |
| istco |       |         | uclearsim.html>`__.                        |
| des_n |       |         |                                            |
| uclea |       |         |                                            |
| rsim> |       |         |                                            |
| `__   |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `nbis | NBI,  | Thomas  | Simple Fokker-Planck code calculating the  |
| im <# | alpha | Johnson | collisional ion and electron heating from  |
| imp5_ | s     |         | a particle source, either NBI or nuclear.  |
| listc | /     |         | Code-parameter documentation can be found  |
| odes_ | Fokke |         | `here <imp5_code_parameter_documentation_n |
| nbisi | r-Pla |         | bisim.html>`__.                            |
| m>`__ | nck   |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `risk | NBI   | Mireill | Bounce averaged steady-state Fokker-Planck |
|  <#im | Fokke | e       | solver calculating the collisional ion and |
| p5_li | r-Pla | Schneid | electron heating from a particle source    |
| stcod | nck   | er      | and the NBI current drive. Code-parameter  |
| es_ri |       |         | documentation can be found                 |
| sk>`_ |       |         | `here <imp5_code_parameter_documentation_r |
| _     |       |         | isk.html>`__.                              |
+-------+-------+---------+--------------------------------------------+
| `spot | NBI,  | Mireill | Monte Carlo solver for the Fokker-Planck   |
|  <#im | alpha | e       | equation. Traces guiding centre orbits in  |
| p5_li | s     | Schneid | a steady state magnetic equilibrium under  |
| stcod | and   | er      | the influence of Coloumb collisions and    |
| es_sp | ICRF  |         | interactions with ICRF waves (through the  |
| ot>`_ | Fokke |         | RFOF library). The code can also be used   |
| _     | r-Pla |         | for NBI and alpha particle modelling as it |
|       | nck   |         | can handle source terms from the           |
|       |       |         | distsource CPO.                            |
+-------+-------+---------+--------------------------------------------+
| `asco | NBI,  | Otto    | Monte Carlo Fokker-Planck solver           |
| t4ser | alpha | Asunta/ | calculating the collisional ion and        |
| ial < | s,    | Seppo   | electron heating from a particle source    |
| #imp5 | ICRF  | Sipila  | and the NBI current drive.                 |
| _list | /     |         |                                            |
| codes | Fokke |         |                                            |
| _asco | r-Pla |         |                                            |
| t>`__ | nck   |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `asco | NBI,  | Otto    | Monte Carlo Fokker-Planck solver           |
| t4par | alpha | Asunta/ | calculating the collisional ion and        |
| allel | s,    | Seppo   | electron heating from a particle source    |
|  <#im | ICRF  | Sipila  | and the NBI current drive.                 |
| p5_li | /     |         |                                            |
| stcod | Fokke |         |                                            |
| es_as | r-Pla |         |                                            |
| cot>` | nck   |         |                                            |
| __    |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| Lion  | IC /  | Olivier | Global ICRF wave solver. Code-parameter    |
|       | waves | Sauter  | documentation can be found                 |
|       |       | and     | `here <imp5_code_parameter_documentation_l |
|       |       | Laurent | ion.html>`__.                              |
|       |       | Villard |                                            |
+-------+-------+---------+--------------------------------------------+
| Cyran | IC /  | Ernesto | Global ICRF wave solver. Code-parameter    |
| o     | waves | Lerche  | documentation can be found                 |
|       |       | and     | `here <imp5_code_parameter_documentation_c |
|       |       | Dirk    | yrano.html>`__.                            |
|       |       | Van     |                                            |
|       |       | Eester  |                                            |
+-------+-------+---------+--------------------------------------------+
| Eve   | IC /  | Remi    | Global ICRF wave solver                    |
| (not  | waves | Dumont  |                                            |
| yet   |       |         |                                            |
| in    |       |         |                                            |
| ETS)  |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| StixR | IC /  | Dirk    | 1d Fokker-Planck solver for ICRF heating.  |
| eDist | waves | Van     |                                            |
|       |       | Eester  |                                            |
|       |       | and     |                                            |
|       |       | Ernesto |                                            |
|       |       | Lerche  |                                            |
+-------+-------+---------+--------------------------------------------+
| ICdep | IC /  | Thomas  | Generates Waves-cpo with an IC wave field  |
|       | waves | Johnson | with Gaussian deposition profiles          |
|       |       |         | described by a combination of antenna-cpo  |
|       |       |         | input and through code parameters input.   |
|       |       |         | Code-parameter documentation can be found  |
|       |       |         | `here <imp5_code_parameter_documentation_i |
|       |       |         | cdep.html>`__.                             |
+-------+-------+---------+--------------------------------------------+
| `ICco | IC /  | Thomas  | Simple model for the coupling waves from   |
| up <# | coupl | Johnson | ion cyclotron antennas to the plasma.      |
| imp5_ | ing   |         | Code-parameter documentation can be found  |
| listc |       |         | `here <imp5_code_parameter_documentation_i |
| odes_ |       |         | ccoup.html>`__.                            |
| iccou |       |         |                                            |
| p>`__ |       |         |                                            |
+-------+-------+---------+--------------------------------------------+

.. _ETS_A_4.10b_list_actors_events:

Events actors
-------------

+-------+-------+---------+--------------------------------------------+
| Code  | Code  | Contact | Short description                          |
| name  | Categ | persons |                                            |
|       | ory   |         |                                            |
+=======+=======+=========+============================================+
| pelle | pelle | Denis   |                                            |
| tacto | t     | Kalupin |                                            |
| r     |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| pelle | pelle | Denis   |                                            |
| ttrig | t     | Kalupin |                                            |
| ger   |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| sawcr | sawte | Olivier |                                            |
| ash_s | eth   | Sauter  |                                            |
| lice  |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| sawcr | sawte | Olivier |                                            |
| it    | eth   | Sauter  |                                            |
+-------+-------+---------+--------------------------------------------+
| `runa | runaw | Roland  | Indicating the presence of runaway         |
| way_i | ay    | Lohner  | electrons: 1) Indicate, whether electric   |
| ndica |       | och     | field is below the critical level, thus    |
| tor < |       | Gergo   | runaway generation is impossible. 2)       |
| http: |       | Pokol   | Indicate, whether runaway electron growth  |
| //por |       |         | rate exceeds a preset limit. This          |
| tal.e |       |         | calculation takes only the Dreicer runaway |
| fda-i |       |         | generation method in account and assumes a |
| tm.eu |       |         | velocity distribution close to Maxwellian, |
| /twik |       |         | therefore this result should be considered |
| i/bin |       |         | with caution. The growth rate limit can be |
| /view |       |         | set via an input of the actor. Limit value |
| /Main |       |         | is set to $$10^12$$ particle per second by |
| /HCD- |       |         | default. (This growth rate generates a     |
| codes |       |         | runaway current of approximately 1kA       |
| -runi |       |         | considering a 10 seconds long discharge.)  |
| n-use |       |         |                                            |
| rmanu |       |         |                                            |
| al>`_ |       |         |                                            |
| _     |       |         |                                            |
+-------+-------+---------+--------------------------------------------+

.. _ETS_A_4.10b_list_actors_events:

Non-physics actors
------------------

The ETS uses the following list of non-physics actors: addECant,
addICant, backgroundtransport, calculateRHO, changeocc, changepsi,
changeradii, checkconvergence, controlAMIX, coredelta2coreprof,
correctcurrent, deltacombiner, emptydistribution, emptydistsource,
emptywaves, eqinput, etsstart, fillcoreimpur, fillcoreneutrals,
fillcoreprof, fillcoresource, fillcoretransp, fillequilibrium,
fillneoclassic, filltoroidfield, gausiansources, geomfromcpo,
hcd2coresource, ignoredelta, ignoreimpurity, ignoreneoclassic,
ignoreneutrals, ignorepellet, ignoresources, ignoretransport, IMP4dv,
IMP4imp, importimptransport, itmimpurity, itmneutrals,
merger4distribution, merger4distsource, merger4waves, nbifiller,
neoclassic2coresource, neoclassic2coretransp, parabolicprof,
plasmacomposition, PowerFromArray, PowerModulation, profilesdatabase,
readjustprof, sawupdate_slice, scaleprof, sourcecombiner,
sourcedatabase, transportcombiner, transportdatabase, wallFiller and
waves2sources.
