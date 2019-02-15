.. _imp5_actors:

Actors
======

IMP5 are providing a number of
Kepler
actors
for testing and use on the
EU-IM Gateway
. The list is constantly expanding and will be updated regularly.
The actors should later be uploaded under the
KeplerActors
project under
Gforge
(see
instructions
).
IMP5's actors are hosted in the following categories:
::

   - antenna models for IC, LH and EC antennas
   - waves models for IC, LH and EC wave propagation and absorption
   - neutral beam source models
   - fusion reaction source and sink models, e.g. alpha particles sources
   - Fokker-Planck solvers (and other kinetic plasma description) for treatment of 
      -- nbi and alpha sources
      -- resonant wave particle interactions
   - data-joiners and workflow controllers for integrated modelling

.. _imp5_actors_Models_for_EC_waves:

Models for EC waves
-------------------

.. _imp5_actors_GRAY:

`GRAY <#imp5_listcodes_gray>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GRAY is a quasi-optical ray-tracing code for electron cyclotron heating
& current drive calculations in tokamaks.

The GRAY actor can be found under `Gforge <https://gforge6.eufus.eu/>`__
on the in the `KeplerActors <#isip_kepleractors>`__ repository. To
export a local copy of the GRAY actor, version 4.08a, from the
repository, do

::

   svn co https://gforge6.eufus.eu/svn/kepleractors/trunk/4.08a/imp5/electron_physics/gray/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| beamtracing | `equilibriu | `waves <#imp5_cpos | codeparam          |
| single time | m <#imp5_cp | _waves>`__         |                    |
| slice actor | os_equilibr |                    |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `antennas < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | antennas>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_TORBEAM:

`TORBEAM <#imp5_listcodes_torbeam>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(draft)

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `equilibriu | `waves <#imp5_cpos | time               |
| slices      | m <#imp5_cp | _waves>`__         |                    |
|             | os_equilibr |                    |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `antennas < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | antennas>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_Models_for_IC_waves:

Models for IC waves
-------------------

.. _imp5_actors_TORIC:

`TORIC <#imp5_listcodes_toric>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TORIC is an electron magnetic wave solver, primarily applied for ICRF
waves.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `equilibriu | `waves <#imp5_cpos | ?                  |
| slices      | m <#imp5_cp | _waves>`__         |                    |
|             | os_equilibr |                    |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `antennas < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | antennas>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_EVE:

`EVE <#imp5_listcodes_eve>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EVE is an electron magnetic wave solver, primarily applied for ICRF
waves.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `equilibriu | `waves <#imp5_cpos | ?                  |
| slices      | m <#imp5_cp | _waves>`__         |                    |
|             | os_equilibr |                    |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `antennas < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | antennas>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_Models_for_NB_deposition:

Models for neutral beam deposition
----------------------------------

.. _imp5_actors_NEMO:

`NEMO <#imp5_listcodes_nemo>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Calculate the initial deposition of neutrals beam particles as well as
their distribution function.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `equilibriu | `distsource <#imp5 | -                  |
| slices      | m <#imp5_cp | _cpos_distsource>` |                    |
|             | os_equilibr | __                 |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `nbi <#imp5 |                    |                    |
|             | _cpos_nbi>` |                    |                    |
|             | __          |                    |                    |
+-------------+-------------+--------------------+--------------------+

NEMO fills the TYPE source_4d in distsource, but not the TYPE source_tp.
To fill source_TP an intermediate actor is needed (such an actor could
be extracted from the SPOT code).

.. _imp5_actors_Kinetic_models:

Kinetic models
--------------

Kinetic models are e.g. Fokker-Planck, Monte Carlo, or hybrid
MHD-Gyrokinetic models.

.. _imp5_actors_FPSIM:

`FPSIM <#imp5_listcodes_fpsim>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Simplified Fokker-Planck solver for solving distribution function \\(
f(v, \\rho ) \\) during ICRF. Including a simplified model for wide
orbits and the pitch angle distribution.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| time        | `equilibriu | `distribution <#im | time codeparam     |
| dependent   | m <#imp5_cp | p5_cpos_distributi |                    |
|             | os_equilibr | on>`__             |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `waves <#im |                    |                    |
|             | p5_cpos_wav |                    |                    |
|             | es>`__      |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_NBISIM:

`NBISIM <#imp5_listcodes_fpsim>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Simplified Fokker-Planck solver for solving distribution function \\(
f(v, \\rho ) \\) during NBI.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| time        | `equilibriu | `distribution <#im | time               |
| dependent   | m <#imp5_cp | p5_cpos_distributi |                    |
|             | os_equilibr | on>`__             |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `distsource |                    |                    |
|             |  <#imp5_cpo |                    |                    |
|             | s_distsourc |                    |                    |
|             | e>`__       |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_MARS:

`MARS <#imp5_listcodes_fpsim>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MARS is the prototype of the MHD solver of HYMAGYC, the hybrid
MHD-Gyrokinetic Code to study Alfven modes driven by energetic
particles. A provisional actor for 4.08b CPOs release can be downloaded
by /afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/4.08b/.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| time        | `equilibriu | `mhd <#imp5_cpos_d | time codeparam     |
| dependent   | m <#imp5_cp | istribution>`__    |                    |
|             | os_equilibr |                    |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_misc:

Datajoiners
-----------

.. _imp5_actors_waves2sources:

waves2sources
~~~~~~~~~~~~~

The IMP5 codes (e.g. GRAY, TORBEAM, TORIC, FPSIM) does not produce the
coresource CPOs directly. Instead a datajoiner, waves2sources, has been
prepared to copy the necessary information from a waves CPO. At present,
the module searches for the first component i in a waves CPO such that
waves(1)%global_param%type(i)=="EC" and it copies the power and current
density profiles from waves to coresource
(coresource%qe%exp=waves%profiles_1d%powd_e,
coresource%j=waves%profiles_1d%curd_par). The field
coresource%toroid_field is filled too (needed as reference for j
normalization).

The waves2sources actor can be found under
`Gforge <https://gforge6.eufus.eu/>`__ on the in the
`KeplerActors <#isip_kepleractors>`__ repository. To export a local copy
of the waves2sources actor, version 4.08a, from the repository, do

::

   svn co https://gforge6.eufus.eu/svn/kepleractors/trunk/4.08a/imp5/tools/datajoiners/waves2sources/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `waves <#im | `coresource <#imp5 | -                  |
| slice       | p5_cpos_wav | _cpos_coresource>` |                    |
| datajoiner  | es>`__      | __                 |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_imp5coresource:

imp5coresource
~~~~~~~~~~~~~~

The actor imp5coresource is a data joiner takes data from the
distribution, waves and distsource CPO and generates the coresource CPO.

The imp5coresource actor can be imported from

::

   /afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/imp5_hcd_module/

To export a local copy of the source code from the svn repository

::

   svn co https://gforge6.eufus.eu/svn/imp5tool/trunk/datajoiners/imp5coresource/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `distributi | `coresource <#imp5 | -                  |
| slice       | on <#imp5_c | _cpos_coresource>` |                    |
| datajoiner  | pos_distrib | __                 |                    |
|             | ution>`__   |                    |                    |
|             | `waves <#im |                    |                    |
|             | p5_cpos_wav |                    |                    |
|             | es>`__      |                    |                    |
|             | `distsource |                    |                    |
|             |  <#imp5_cpo |                    |                    |
|             | s_distsourc |                    |                    |
|             | e>`__       |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_passthroughdj4distribution:

passthroughdj4distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~

The passthroughdj4distribution data joiners merges the data from two
cpos of type distribution.

The passthroughdj4distribution actor can be imported from

::

   /afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/imp5_hcd_module/

The passthroughdj4distribution is part of the "empty_imp5_cpos" package
of simple CPO generators. To export a local copy of the source code,
version 4.08a, from the repository

::

   svn co https://gforge6.eufus.eu/svn/imp5tool/trunk/cpogenerators/empty_imp5_cpos/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `distributi | `distribution <#im | -                  |
| slice       | on <#imp5_c | p5_cpos_distributi |                    |
| datajoiner  | pos_distrib | on>`__             |                    |
|             | ution>`__   |                    |                    |
|             | `distributi |                    |                    |
|             | on <#imp5_c |                    |                    |
|             | pos_distrib |                    |                    |
|             | ution>`__   |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_passthroughdj4distsource:

passthroughdj4distsource
~~~~~~~~~~~~~~~~~~~~~~~~

The passthroughdj4distsource data joiners merges the data from two cpos
of type distribution.

The passthroughdj4distsource actor can be imported from

::

   /afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/imp5_hcd_module/

The passthroughdj4distsource is part of the "empty_imp5_cpos" package of
simple CPO generators. To export a local copy of the source code,
version 4.08a, from the repository

::

   svn co https://gforge6.eufus.eu/svn/imp5tool/trunk/cpogenerators/empty_imp5_cpos/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `distsource | `distsource <#imp5 | -                  |
| slice       |  <#imp5_cpo | _cpos_distsource>` |                    |
| datajoiner  | s_distsourc | __                 |                    |
|             | e>`__       |                    |                    |
|             | `distsource |                    |                    |
|             |  <#imp5_cpo |                    |                    |
|             | s_distsourc |                    |                    |
|             | e>`__       |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_passthroughdj4waves:

passthroughdj4waves
~~~~~~~~~~~~~~~~~~~

The passthroughdj4waves data joiners merges the data from two cpos of
type distribution.

The passthroughdj4waves actor can be imported from

::

   /afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/imp5_hcd_module/

The passthroughdj4waves is part of the "empty_imp5_cpos" package of
simple CPO generators. To export a local copy of the source code,
version 4.08a, from the repository

::

   svn co https://gforge6.eufus.eu/svn/imp5tool/trunk/cpogenerators/empty_imp5_cpos/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `waves <#im | `waves <#imp5_cpos | -                  |
| slice       | p5_cpos_wav | _waves>`__         |                    |
| datajoiner  | es>`__      |                    |                    |
|             | `waves <#im |                    |                    |
|             | p5_cpos_wav |                    |                    |
|             | es>`__      |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_misc:

CPO generators
--------------

.. _imp5_actors_writeECant:

writeECant
~~~~~~~~~~

For testing purposes this module, writeECant, was prepared to write a
single time slice antennas CPO, providing the antenna parameters in XML
format. Maybe it is better to have a parameters subset (power,
orientation angles) passed as separate float values in a future version
(workflows with antenna controlled in "real time" ?).

The writeECant actor can be found under
`Gforge <https://gforge6.eufus.eu/>`__ on the in the
`KeplerActors <#isip_kepleractors>`__ repository. To export a local copy
of the writeECant actor, version 4.08a, from the repository, do

::

   svn co https://gforge6.eufus.eu/svn/kepleractors/trunk/4.08a/imp5/tools/cpogenerators/writeECant/

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | topinfo     | `antennas <#imp5_c | -                  |
| slice Write | (dummy      | pos_antennas>`__   |                    |
| test CPO    | input to    |                    |                    |
|             | allow       |                    |                    |
|             | building a  |                    |                    |
|             | Kepler      |                    |                    |
|             | actor)      |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_icantmu:

icantmu
~~~~~~~

Mock-up ICRF antenna.

tar-file containing exported actor stored in
/afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | ?           | `antennas <#imp5_c | ?                  |
| slice Write |             | pos_antennas>`__   |                    |
| test CPO    |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_nbisetup:

nbisetup
~~~~~~~~

Generate an `nbi <#imp5_cpos_nbi>`__ CPO.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | ?           | `nbi <#imp5_cpos_n | ?                  |
| slice Write |             | bi>`__             |                    |
| test CPO    |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_easyic:

easyic
~~~~~~

Mock-up Fokker-Planck solver for ICRF. Only for testing.

tar-file containing exported actor stored in
/afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `equilibriu | `distribution <#im | -                  |
| slice Write | m <#imp5_cp | p5_cpos_distributi |                    |
| test CPO    | os_equilibr | on>`__             |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
|             | `waves <#im |                    |                    |
|             | p5_cpos_wav |                    |                    |
|             | es>`__      |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_actors_icdepmu:

icdepmu
~~~~~~~

Mock-up of ICRF wave codes which writes the waves CPO.

tar-file containing exported actor stored in
/afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/actors/.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | `equilibriu | `waves <#imp5_cpos | -                  |
| slices      | m <#imp5_cp | _waves>`__         |                    |
|             | os_equilibr |                    |                    |
|             | ium>`__     |                    |                    |
|             | `coreprof < |                    |                    |
|             | #imp5_cpos_ |                    |                    |
|             | coreprof>`_ |                    |                    |
|             | _           |                    |                    |
+-------------+-------------+--------------------+--------------------+

