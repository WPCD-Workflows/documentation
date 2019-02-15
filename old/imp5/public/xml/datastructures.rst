.. toctree::
   :maxdepth: 2

   ../../../imp5/public/xml/cpos_used_by_imp5
   ../../../imp5/public/xml/imp5_update_datastructures_for_4.10a
   ../../../imp5/public/xml/edrg_machine_description_shot_database_and_tools
<include

.. _imp5_datastructures:

Datastructures (CPOs)
=====================

This page give you overview information on the datastructures (CPOs)
that are most relevant for IMP5.

Detailed information on all EU-IM datastructures can be found
`here <#isip_data_structure>`__.

CPOs for which IMP5 are responsible.

+----------+-----------------------------------------------------------+
| CPO      | Description                                               |
+==========+===========================================================+
| antennas | The antennas CPO describe of antennas used for IC, EC and |
| (`type < | LH heating and current drive. The data stored in the CPO  |
| #antenna | includes both hardware descriptions, like the antenna     |
| s>`__,\  | geometry, settings like the power launched and the        |
| `fortran | frequency. The antennas CPO may include the descriptions  |
|  <#anten | of multiple systems in each frequency range, i.e. we may  |
| nas_Fort | have several IC antennas, several LH launcher and several |
| ran>`__) | EC systems.                                               |
+----------+-----------------------------------------------------------+
| launchs  | *WARNING, this CPO is under restructuring and the present |
| (`type < | version should NOT be used! (2014-03-17)* The idea of     |
| #launchs | this CPO is to describe the coupling of LH waves.         |
| >`__,\ ` |                                                           |
| fortran  |                                                           |
| <#launch |                                                           |
| s_Fortra |                                                           |
| n>`__)   |                                                           |
+----------+-----------------------------------------------------------+
| waves    | The waves CPO describe wave fields, primarily those used  |
| (`type < | for heating and current drive. The wave fields can be     |
| #waves>` | described in two diffferent form; either as a global wave |
| __,\ `fo | fiedl calculated at every point in the devise, or as a    |
| rtran <# | set of beams, or rays.                                    |
| waves_Fo |                                                           |
| rtran>`_ |                                                           |
| _)       |                                                           |
+----------+-----------------------------------------------------------+
| nbi      | The NBI CPO describes the NBI (neutral beam injection)    |
| (`type < | system. The main purpose of the CPO is to be used to      |
| #nbi>`__ | calculate the neutrals that reach the plasma. The CPO     |
| ,\ `fort | includes both variable setting like the acceleration      |
| ran <#nb | energy and the input power, as well as a description of   |
| i_Fortra | the beam geometry. The geometry is separated into two     |
| n>`__)   | levels, one describing including so called "beamlet       |
|          | groups" that form a type of focussed beam with a focal    |
|          | length. The second level is that every beamlet group      |
|          | includes individual "beamlets". Each of these beamlets    |
|          | originate form a small hole in the grounded grid. Since   |
|          | all particles coming out of one such hole has been        |
|          | accelerated by somewhere between 50keV and 1.5 MeV, they  |
|          | all have almost the same velocity vector. The tiny        |
|          | variations in this velocity vector has a Gaussian shape   |
|          | and is specified as the beamlet divergence.               |
+----------+-----------------------------------------------------------+
| distsour | Source terms for kinetic plasma model; e.g. the source of |
| ce       | neutral beam particles or alpha particles. This data      |
| (`type < | should come from a beam deposition code and should serve  |
| #distsou | as input to kinetic codes, e.g. Fokker-Planck codes.      |
| rce>`__, |                                                           |
| \ `fortr |                                                           |
| an <#dis |                                                           |
| tsource_ |                                                           |
| Fortran> |                                                           |
| `__)     |                                                           |
+----------+-----------------------------------------------------------+
| distribu | Distribution functions of particles involved in the       |
| tion     | heating. E.g. the velocity distribution function of fast  |
| (`type < | ions/electrons driven by RF, or the distribution function |
| #distrib | of alpha particles, or beam injected ions. The CPO should |
| ution>`_ | be filled in by a kinetic code and provide heating and    |
| _,\ `for | provide, e.g. heating and current drive for transport     |
| tran <#d | solvers.                                                  |
| istribut |                                                           |
| ion_Fort |                                                           |
| ran>`__) |                                                           |
+----------+-----------------------------------------------------------+

Additional material about the IMP5 CPOs: IMP5 CPOs
(`pdf <../imports/meetings/20100913-17_Lisbon/Talk_Johnson_CPOs_EU-IM-GM2010.pdf>`__)
(`ppt <../imports/meetings/20100913-17_Lisbon/Talk_Johnson_CPOs_EU-IM-GM2010.ppt>`__)
from the General EU-IM meeting september 2010 in Lisbon.

CPOs commonly used by IMP5 codes.

+--------+-------------------------------------------------------------+
| CPO    | Description                                                 |
+========+=============================================================+
| equili | Magnetic equilibrium.                                       |
| brium  |                                                             |
| (`type |                                                             |
|  <#equ |                                                             |
| ilibri |                                                             |
| um>`__ |                                                             |
| ,\ `fo |                                                             |
| rtran  |                                                             |
| <#equi |                                                             |
| libriu |                                                             |
| m_Fort |                                                             |
| ran>`_ |                                                             |
| _)     |                                                             |
+--------+-------------------------------------------------------------+
| corepr | Profiles of densities, temperatures, flows,... in the       |
| of     | plasma core.                                                |
| (`type |                                                             |
|  <#cor |                                                             |
| eprof> |                                                             |
| `__,\  |                                                             |
| `fortr |                                                             |
| an <#c |                                                             |
| orepro |                                                             |
| f_Fort |                                                             |
| ran>`_ |                                                             |
| _)     |                                                             |
+--------+-------------------------------------------------------------+
| corepr | Profiles of impurity densities... in the plasma core.       |
| of     |                                                             |
| (`type |                                                             |
|  <#cor |                                                             |
| eprof> |                                                             |
| `__,\  |                                                             |
| `fortr |                                                             |
| an <#c |                                                             |
| orepro |                                                             |
| f_Fort |                                                             |
| ran>`_ |                                                             |
| _)     |                                                             |
+--------+-------------------------------------------------------------+
| corepr | New in 4.10b! Fluid moments of non-thermal particles, e.g.  |
| of     | densities, parallel and perpendicular pressure etc. The     |
| (`type | data is derived from the distribution CPO; it summarises    |
|  <#cor | the distribution CPO for e.g. transport codes, MHD codes,   |
| eprof> | but can also be used in wave codes to simulate the wave     |
| `__,\  | absorption on fast-ion populations.                         |
| `fortr |                                                             |
| an <#c |                                                             |
| orepro |                                                             |
| f_Fort |                                                             |
| ran>`_ |                                                             |
| _)     |                                                             |
+--------+-------------------------------------------------------------+
| coreso | Sources of particles, momentum and heat to ETS.             |
| urce   |                                                             |
| (`type |                                                             |
|  <#cor |                                                             |
| esourc |                                                             |
| e>`__, |                                                             |
| \ `for |                                                             |
| tran < |                                                             |
| #cores |                                                             |
| ource_ |                                                             |
| Fortra |                                                             |
| n>`__) |                                                             |
+--------+-------------------------------------------------------------+

The IMP5 only uses certain parts of the CPOs defined above, see `list of
cpos-fields used by IMP5 codes <#common_imp5_cpo_input>`__.

