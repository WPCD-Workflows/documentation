.. toctree::
   :maxdepth: 2

   ../../../imp5/public/xml/imp5hcd_core_parameter_input

.. _imp5_imp5hcd:

IMP5HCD - the IMP5 Composite Actor for Heating and Current Drive
================================================================

+-------------------+---------+-------------------+-------------------+
| Purpose           | Contact | Input             | Output            |
|                   | persons |                   |                   |
+===================+=========+===================+===================+
| Kepler-actor for  | Thomas  | `EU-EU-IM Plasma    | Subset of the     |
| integrated        | Johnson | bundle <#itm_conv | `EU-EU-IM Plasma    |
| modelling of      | Lorenzo | entions_plasma_bu | bundle <#itm_conv |
| Heating and       | Figini  | ndle>`__          | entions_plasma_bu |
| Current Drive     |         | Required CPOs     | ndle>`__          |
| (EC,LH,IC,NBI,alp |         | are: antennas,    | containing the    |
| has-heating)      |         | nbi, wall,        | CPOs: waves,      |
|                   |         | equilibrium,      | distsource,       |
|                   |         | coreprof,         | distribution,     |
|                   |         | coreimpur. Manual | coresource        |
|                   |         | setting (Kepler   |                   |
|                   |         | variables)        |                   |
|                   |         | selecting codes,  |                   |
|                   |         | synergy options,  |                   |
|                   |         | and certain       |                   |
|                   |         | modelling         |                   |
|                   |         | parameters.       |                   |
+-------------------+---------+-------------------+-------------------+

The IMP5 Composite Actor for Heating and Current Drive is a multi
layered composite actor. Each layer separates one different groups of
models or codes, e.g.

-  the generation of CPOs (wave, distsource, distribution and
   coresource),
-  the different heating schemes,
-  ions and electrons solvers,
-  ...all the way down to the level of Actors for physics models.

The composite actor takes as input the standardized
EU-EU-IM Plasma bundle
and generates as output the CPOs
waves
,
distsource
,
distribution
and
coresouce
(bundled into a subset of the EU-EU-IM Plasma bundle).
The IMP5 Composite Actor for Heating and Current Drive is stored as part
of the `IMP5HCD-SA <#imp5_workflow__imp5hcd>`__ workflow.

The IMP5HCD include a number physics codes. For a schort description of
these codes and contact information, follow `this
link <#imp5_workflow__physics_actors>`__.

As an example we have below illustrations of some of the structure
inside `the composite actors for waves <#imp5_imp5hcd_waves>`__ and `the
composite actor for distribution <#imp5_imp5hcd_FP>`__.

.. _imp5_imp5hcd_physics_actors:

Physics actors in IMP5HCD
-------------------------

Here follows a list of the heating and current drive actor released in
the imp5hcd composite actor that have passed at least some elementary
robustness tests and in most cases some form of verification. This list
is likely to change within a few month time. For the latest details
contact Thomas Johnson.

Date of last update: 2014-12-19

+-------+-------+---------+--------------------------------------------+
| Code  | Code  | Contact | Short description                          |
| name  | Categ | persons |                                            |
|       | ory   |         |                                            |
+=======+=======+=========+============================================+
| `gray | EC/wa | Lorenzo | GRAY is a quasi-optical ray-tracing code   |
|  <#im | ves   | Figini  | for electron cyclotron heating & current   |
| p5_li |       |         | drive calculations in tokamaks.            |
| stcod |       |         | `Documentation of code                     |
| es_gr |       |         | parameters <imp5_code_parameter_documentat |
| ay>`_ |       |         | ion_gray.html>`__.                         |
| _     |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `trav | EC/wa | Nikolai | Travis is a ray-tracing code for electron  |
| is <# | ves   | Marushc | cyclotron heating & current drive          |
| imp5_ |       | henko   | calculations in tokamaks.                  |
| listc |       |         |                                            |
| odes_ |       |         |                                            |
| travi |       |         |                                            |
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
| stcod |       | er      | current drive).                            |
| es_bb |       |         |                                            |
| nbi>` |       |         |                                            |
| __    |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `nucl | nucle | Thomas  | Simple code for nuclear sources from       |
| earsi | ar/so | Johnson | thermal/thermal reactions. `Documentation  |
| m <#i | urce  |         | of code                                    |
| mp5_l |       |         | parameters <imp5_code_parameter_documentat |
| istco |       |         | ion_nuclearsim.html>`__                    |
| des_n |       |         |                                            |
| uclea |       |         |                                            |
| rsim> |       |         |                                            |
| `__   |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `nbis | NBI+n | Thomas  | Simple Fokker-Planck code calculating the  |
| im <# | uclea | Johnson | collisional ion and electron heating from  |
| imp5_ | r/Fok |         | a particle source, either NBI or nuclear.  |
| listc | ker-P |         |                                            |
| odes_ | lanck |         |                                            |
| nbisi |       |         |                                            |
| m>`__ |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `risk | NBI   | Mireill | Bounce averaged steady-state Fokker-Planck |
|  <#im | Fokke | e       | solver calculating the collisional ion and |
| p5_li | r-Pla | Schneid | electron heating from a particle source    |
| stcod | nck   | er      | and the NBI current drive.                 |
| es_ri |       |         |                                            |
| sk>`_ |       |         |                                            |
| _     |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| `spot | NBI   | Mireill | Monte Carlo solver for the Fokker-Planck   |
|  <#im | and   | e       | equation. Traces guiding centre orbits in  |
| p5_li | ICRF  | Schneid | a steady state magnetic equilibrium under  |
| stcod | Fokke | er      | the influence of Coloumb collisions and    |
| es_sp | r-Pla |         | interactions with ICRF waves (through the  |
| ot>`_ | nck   |         | RFOF library). The can also be used for    |
| _     |       |         | NBI and alpha particle modelling as it can |
|       |       |         | handle source terms from the distsource    |
|       |       |         | CPO.                                       |
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
| `icco | IC/co | Thomas  | Simple model for the coupling waves from   |
| up <# | uplin | Johnson | ion cyclotron antennas to the plasma.      |
| imp5_ | g     |         |                                            |
| listc |       |         |                                            |
| odes_ |       |         |                                            |
| iccou |       |         |                                            |
| p>`__ |       |         |                                            |
+-------+-------+---------+--------------------------------------------+
| LION  | IC /  | Olivier | Global ICRF wave solver                    |
|       | waves | Sauter  |                                            |
|       |       | and     |                                            |
|       |       | Laurent |                                            |
|       |       | Villard |                                            |
+-------+-------+---------+--------------------------------------------+
| Cyran | IC /  | Ernesto | Global ICRF wave solver                    |
| o     | waves | Lerche  |                                            |
|       |       | and     |                                            |
|       |       | Dirk    |                                            |
|       |       | Van     |                                            |
|       |       | Eester  |                                            |
+-------+-------+---------+--------------------------------------------+
| Eve   | IC /  | Remi    | Global ICRF wave solver                    |
|       | waves | Dumont  |                                            |
+-------+-------+---------+--------------------------------------------+
| StixR | IC /  | Dirk    | 1d Fokker-Planck solver for ICRF heating.  |
| eDist | waves | Van     |                                            |
|       |       | Eester  |                                            |
|       |       | and     |                                            |
|       |       | Ernesto |                                            |
|       |       | Lerche  |                                            |
+-------+-------+---------+--------------------------------------------+
| ICDEP | IC /  | Thomas  | Generates Waves-cpo with an IC wave field  |
|       | waves | Johnson | with Gaussian deposition profiles          |
|       |       |         | described by a combination of antenna-cpo  |
|       |       |         | input and through code parameters input    |
|       |       |         | (see `documentation of code                |
|       |       |         | parameters <imp5_code_parameter_documentat |
|       |       |         | ion_icdep.html>`__)                        |
+-------+-------+---------+--------------------------------------------+

.. _imp5_imp5hcd_non_physics_actors:

Non-physics actors in IMP5HCD
-----------------------------

UNDER DEVELOPMENTS

+--------+-------+---------+------------------------------------------+
| Code   | Code  | Contact | Short description                        |
| name   | Categ | persons |                                          |
|        | ory   |         |                                          |
+========+=======+=========+==========================================+
| addECa | Anten | Thomas  | Appends EC setting to an Antennas-cpo.   |
| nt     | nas   | Johnson | The settings are provided as a           |
|        | /     | /Lorenz | combination of Kepler-input (for power   |
|        | gener | o       | and launching angles) and machine        |
|        | ator  | Figini  | parameters that are hardcoded for each   |
|        |       |         | tokamak. In case the EC system of a      |
|        |       |         | tokamak is not implemented it uses the   |
|        |       |         | code-parameters from the writeECant      |
|        |       |         | actor (see `documentation of code        |
|        |       |         | parameters <imp5_code_parameter_document |
|        |       |         | ation_writeECant.html>`__)               |
+--------+-------+---------+------------------------------------------+
| addICa | Anten | Thomas  | Appends IC setting to an Antennas-cpo.   |
| nt     | nas   | Johnson | The settings are provided as a           |
|        | /     |         | combination of Kepler-input, including   |
|        | gener |         | the power, frequency and phasing. In     |
|        | ator  |         | case the IC machine parameters are not   |
|        |       |         | available in the input CPO, then these   |
|        |       |         | are filled with hardcoded parameters for |
|        |       |         | a given tokamak.                         |
+--------+-------+---------+------------------------------------------+
| nbifil | NBI / | Thomas  | Updates the time dependent NBI setting   |
| ler    | gener | Johnson | to an NBI-cpo. The settings are provided |
|        | ator  |         | as a combination of Kepler-input,        |
|        |       |         | including the mass, charge, power,       |
|        |       |         | injection energy and the                 |
|        |       |         | beam-power-fractions. In case the IC     |
|        |       |         | machine parameters are not available in  |
|        |       |         | the input CPO, then these are filled     |
|        |       |         | with hardcoded parameters for a given    |
|        |       |         | tokamak.                                 |
+--------+-------+---------+------------------------------------------+
| hcd2co | cores | Thomas  | Generates a Coresource-cpo from input    |
| resour | ource | Johnson | Distsource, Waves and Distribution cpos. |
| ce     | -CPO  |         |                                          |
|        | /     |         |                                          |
|        | dataj |         |                                          |
|        | oiner |         |                                          |
+--------+-------+---------+------------------------------------------+
| waves2 | cores | Lorenzo | Generates a Coresource-cpo from input    |
| source | ource | Figini  | Waves cpo.                               |
|        | -CPO  |         |                                          |
|        | /     |         |                                          |
|        | dataj |         |                                          |
|        | oiner |         |                                          |
+--------+-------+---------+------------------------------------------+
| hcd2co | cores | Thomas  | Generates a Corefast-cpo from the input  |
| refast | ource | Johnson | Distribution cpo.                        |
|        | -CPO  |         |                                          |
|        | /     |         |                                          |
|        | dataj |         |                                          |
|        | oiner |         |                                          |
+--------+-------+---------+------------------------------------------+
| emptyw | waves | Thomas  | Generates an empty Waves cpo.            |
| aves   | -CPO  | Johnson |                                          |
|        | /     |         |                                          |
|        | gener |         |                                          |
|        | ator  |         |                                          |
+--------+-------+---------+------------------------------------------+
| emptyd | dists | Thomas  | Generates an empty Distsource cpo.       |
| istsou | ource | Johnson |                                          |
| rce    | -CPO  |         |                                          |
|        | /     |         |                                          |
|        | gener |         |                                          |
|        | ator  |         |                                          |
+--------+-------+---------+------------------------------------------+
| emptyd | distr | Thomas  | Generates an empty Distribution cpo.     |
| istrib | ibuti | Johnson |                                          |
| ution  | on-CP |         |                                          |
|        | O     |         |                                          |
|        | /     |         |                                          |
|        | gener |         |                                          |
|        | ator  |         |                                          |
+--------+-------+---------+------------------------------------------+
| emptyc | cores | Thomas  | Generates an empty Coresource cpo.       |
| oresou | ource | Johnson |                                          |
| rce    | -CPO  |         |                                          |
|        | /     |         |                                          |
|        | gener |         |                                          |
|        | ator  |         |                                          |
+--------+-------+---------+------------------------------------------+
| emptyc | coref | Thomas  | Generates an empty Corefast cpo.         |
| orefas | ast-C | Johnson |                                          |
| t      | PO    |         |                                          |
|        | /     |         |                                          |
|        | gener |         |                                          |
|        | ator  |         |                                          |
+--------+-------+---------+------------------------------------------+
| merge4 | waves | Thomas  | Mergers two Waves cpos.                  |
| waves  | -CPO  | Johnson |                                          |
|        | /     |         |                                          |
|        | merge |         |                                          |
|        | r     |         |                                          |
+--------+-------+---------+------------------------------------------+
| merge4 | dists | Thomas  | Mergers two Distsource cpos.             |
| distso | ource | Johnson |                                          |
| urce   | -CPO  |         |                                          |
|        | /     |         |                                          |
|        | merge |         |                                          |
|        | r     |         |                                          |
+--------+-------+---------+------------------------------------------+
| merge4 | distr | Thomas  | Mergers two Distribution cpos.           |
| distri | ibuti | Johnson |                                          |
| bution | on-CP |         |                                          |
|        | O     |         |                                          |
|        | /     |         |                                          |
|        | merge |         |                                          |
|        | r     |         |                                          |
+--------+-------+---------+------------------------------------------+

.. _imp5_imp5hcd_waves:

Composite Actor for Waves
-------------------------

Wave field solvers in the IMP5 Composite Actor for Heating and Current
Drive are collected in a composite actor, which in turns separates the
different heating schemes ICRF, LH and ECRH. The three waves fields are
then joined by a datajoiner for the waves CPO.

As an example we here show how the ECRH composite actor select the
physics code to use from a long list. The variable that determines the
selection is a global parameter ec_wave_code, set at the top-level of
the composite actor IMP5HCD. Note that if you run IMP5HCD in the ETS
ec_wave_code is set on a higher level.

When selecting ec_wave_code=gray the workflow will entre the Gray model
composite actor containing the `Gray code <#imp5_listcodes_gray>`__, a
ray tracer for EC waves.

.. _imp5_imp5hcd_FP:

Composite Actor for Fokker-Planck
---------------------------------

The composite actor for Fokker-Planck solvers are separated into solver
for the electron and ion distribution function

As an example is shown below the composite actor for the ion-Fokker
Planck solvers. This solvers allows two different ways of operation,
either the full Fokker-Planck equation is solved including both wave
field acceleration and particle source terms (the box "Ion Fokker-Planck
wave + particle source" in the figure), or alternatively the two effects
(wave acceleration and particle source terms) are treated seperately in
two different solver (...in the figure).

Next looking more carefully what's inside e.g. the "Ion Fokker-Planck
particle source" box we find again both an Empty CPO Generator and a
long list physics codes to choose between: nbisim, risk, spot,
ascot4serial, ascot4parallel.

Finally, inside the NBISIM composite actor you find the nbisim actor.

.. _CPOs_fields_required_for_the_IMP5HCD_composite_actor:

CPOs-fields required for the IMP5HCD composite actor
----------------------------------------------------

An Actor running under `IMP5HCD <#imp5_imp5hcd>`__ have to fill in
certain fields, or else the workflow will not work properly. Here
follows a list of requirements in 4.08b, using Fortran notation; for C,
Java, or matlab notation replace "%" by "." (a dot).

-  waves(.)%coherentwave(.)%grid_1d%rho_tor
   is required by
   imp5coresource
   . If this field is not filled, then the data in
   waves(.)%coherentwave(.)
   will be discarded in the coresource output.

WARNING: This list is outdated. There are now a large number of reuqired
fields that will be added to this list.
.. _imp5_imp5hcd_error_handling:

Error handling
--------------

When building advanced workflows like the IMP5HCD it is imparative that
the individual components are robust and behaves in a controlled manner,
even when the input is outside the conditions for validity. For this
reason the EU-IM strongly encourage `defensive
programming <#F90AssertionsModule>`__.

The output of any EU-IM actor should in addition always provide error
messages the output CPOs. Every CPO therefore includes a derived
datatype called codeparam (located directly under the root of every
CPO), which contains the field output_flag in which the error flag
should be stored, see above.

+--------------------+-------------------------------------------------+
| `<any-cpo>%codepar | Integer output flag: 0 means the run was        |
| am%output_flag <#w | successful and can be used in the rest of the   |
| aves_global_param> | workflow, <0 means failure                      |
| `__                |                                                 |
+--------------------+-------------------------------------------------+

tjohnson $
