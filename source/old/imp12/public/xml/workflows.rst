.. _imp12_workflows:

Workflows
=========

The IMP12 project has provided a series of prebuilt Kepler workflows
around equilibrium reconstruction, linear MHD stability, non-linear MHD,
and disruptions. Below the prototype workflows are described as they are
stored in the `keplerworkflows <#isip_keplerworkflows>`__ repository
under Gforge. Most prototypes come with several production versions
which are also stored in the `keplerworkflows <#isip_keplerworkflows>`__
repository. The list is constantly expanding. IMP12's workflows are
hosted in the following categories:

::

   - fixed_boundary_equilibrium
   - free_boundary_equilibrium
   - linear_MHD

Prototype Workflows
-------------------

+-----------------+-----------------------------------------------------+
| Workflow        | Description                                         |
+=================+=====================================================+
| equalslice.xml  | free boundary equilibrium reconstruction based on   |
|                 | magnetics data using                                |
|                 | `EQUALslice <#imp12_equalslice_actor>`__.           |
+-----------------+-----------------------------------------------------+
| helena_aug.xml  | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
+-----------------+-----------------------------------------------------+
| ilsa_aug.xml    | linear MHD stability analysis for a high resolution |
|                 | fixed boundary equilibrium using                    |
|                 | `ILSA <#imp12_helena_actor>`__.                     |
+-----------------+-----------------------------------------------------+
| equal_helena.xm | Free boundary equilibrium reconstruction based on   |
| l               | magnetics data using                                |
|                 | `EQUALslice <#imp12_equalslice_actor>`__ and        |
|                 | subsequent high resolution fixed boundary           |
|                 | equilibrium calculation using                       |
|                 | `HELENA <#imp12_helena_actor>`__.                   |
+-----------------+-----------------------------------------------------+
| equal_helena_il | Free boundary equilibrium reconstruction based on   |
| sa.xml          | magnetics data using                                |
|                 | `EQUALslice <#imp12_equalslice_actor>`__ and        |
|                 | subsequent high resolution fixed boundary           |
|                 | equilibrium calculation using                       |
|                 | `HELENA <#imp12_helena_actor>`__. Resulting         |
|                 | equilibrium analyzed for linear MHD stability using |
|                 | `ILSA <#imp12_ilsa_actor>`__                        |
+-----------------+-----------------------------------------------------+
| progen_helena_a | Analytic profile and shape generation using         |
| nalytic.xml     | `PROGEN <#imp12_progen_actor>`__ and subsequent     |
|                 | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
+-----------------+-----------------------------------------------------+
| progen_helena_a | ASDEX Upgrade profile and shape generation using    |
| ug.xml          | `PROGEN <#imp12_progen_actor>`__ and subsequent     |
|                 | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
+-----------------+-----------------------------------------------------+
| progen_helena_i | Analytic profile and shape generation using         |
| lsa_analytic.xm | `PROGEN <#imp12_progen_actor>`__ and subsequent     |
| l               | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
|                 | Resulting equilibrium analyzed for linear MHD       |
|                 | stability using `ILSA <#imp12_ilsa_actor>`__        |
+-----------------+-----------------------------------------------------+
| progen_helena_i | ASDEX Upgrade profile and shape generation using    |
| lsa_aug.xml     | `PROGEN <#imp12_progen_actor>`__ and subsequent     |
|                 | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
|                 | Resulting equilibrium analyzed for linear MHD       |
|                 | stability using `ILSA <#imp12_ilsa_actor>`__        |
+-----------------+-----------------------------------------------------+
| jalpha_helena_a | \\(j-\alpha\)-modification of an existing fixed     |
| nalytic.xml     | boundary equilibrium using                          |
|                 | `JALPHA <#imp12_jalpha_actor>`__ and subsequent     |
|                 | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
+-----------------+-----------------------------------------------------+
| jalpha_helena_i | \\(j-\alpha\)-modification of an existing fixed     |
| lsa_analytic.xm | boundary equilibrium using                          |
| l               | `JALPHA <#imp12_jalpha_actor>`__ and subsequent     |
|                 | high resolution fixed boundary equilibrium          |
|                 | calculation using `HELENA <#imp12_helena_actor>`__. |
|                 | Resulting equilibrium analyzed for linear MHD       |
|                 | stability using `ILSA <#imp12_ilsa_actor>`__        |
+-----------------+-----------------------------------------------------+

Production Workflows
--------------------

+------------------------+---------------------------------------------+
| Prototype              | Production                                  |
+========================+=============================================+
| progen_helena_aug.xml  | progen_helena_aug_20116@2_25.xml            |
+------------------------+---------------------------------------------+
| progen_helena_aug_2011 |                                             |
| 6@3_59.xml             |                                             |
+------------------------+---------------------------------------------+
| progen_helena_aug_2011 |                                             |
| 6@5_09.xml             |                                             |
+------------------------+---------------------------------------------+
| progen_helena_ilsa_aug | progen_helena_ilsa_aug_20116@2_25.xml       |
| _xml                   |                                             |
+------------------------+---------------------------------------------+
| progen_helena_ilsa_aug |                                             |
| _20116@3_59.xml        |                                             |
+------------------------+---------------------------------------------+
| progen_helena_ilsa_aug |                                             |
| _20116@5_09.xml        |                                             |
+------------------------+---------------------------------------------+

.. _imp12_free_boundary_equilibrium_workflows:

Free Boundary Equilibrium Reconstruction
----------------------------------------

EQUAL slice
~~~~~~~~~~~

The workflow equalslice.xml reads JET magnetics data from the EU-IM
database and runs the EQUAL free boundary equilibrium reconstruction
code to calculate the equilibrium. A Python actor is included to
visualize the resulting separatrix curve (see figure below).

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | magdiag pfsystems  | equilibrium        |
|             | equalslice  | toroidfield        |                    |
|             | ualpyactor  | limiter ironmodel  |                    |
|             | ualcollecto | msediag interfdiag |                    |
|             | r           | polardiag coreprof |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp12_fixed_boundary_equilibrium_workflows:

High Resolution Fixed Boundary Equilibrium Reconstruction
---------------------------------------------------------

HELENA
~~~~~~

The workflow helena_aug.xml reads an equilibrium CPO from the EU-IM
database (which may contain as little as the input profiles and boundary
curve) and calculates the high resolution fixed boundary equilibrium
inside the specified boundary curve using the HELENA actor. A Python
actor is included to visualize the resulting equilibrium.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | equilibrium        | equilibrium        |
|             | helena      |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

EQUAL-HELENA
~~~~~~~~~~~~

The workflow equal_helena.xml reads JET magnetics data from the EU-IM
database and runs the EQUAL free boundary equilibrium reconstruction
code to calculate the equilibrium. The resulting equilibrium is then
reconstructed within the separatrix with the high resolution equilibrium
solver HELENA. A Python actor is included to visualize the pressure and
current density profiles along with the safety factor q and a
two-dimensional plot of the flux surfaces (see figure). The path
parameter is optional and can be used to redirect verbose output to the
specified directory.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | magdiag pfsystems  | equilibrium        |
|             | equalslice  | toroidfield        |                    |
|             | helena      | limiter ironmodel  |                    |
|             | ualpyactor  | msediag interfdiag |                    |
|             | ualcollecto | polardiag coreprof |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

PROGEN-HELENA
~~~~~~~~~~~~~

Two prototype workflows fall in this category:
progen_helena_analytic.xml and progen_helena_aug.xml. The first of these
generates an equilibrium from an analytic definition of the profiles and
the shape. The second reads experimental profiles and generates an
experimental equilibrium for ASDEX Upgrade.

Analytic equilibrium
^^^^^^^^^^^^^^^^^^^^

The workflow progen_helena_analytic.xml uses the simple tool PROGEN to
generate analytic profiles for p', FF' and the plasma boundary which are
fed to the high resolution fixed boundary equilibrium solver HELENA. One
Python actor shows the incoming p' and FF' profiles while a second
Python actor shows the resulting equilibrium (see figures). The path
parameter is optional but can be used to read profiles from file and to
redirect verbose output to the specified directory.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | none               | equilibrium        |
|             | progen      |                    |                    |
|             | helena      |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

Experimental equilibrium
^^^^^^^^^^^^^^^^^^^^^^^^

The workflow progen_helena_aug.xml uses the simple tool PROGEN to read
the profiles for p', FF' and the plasma boundary from files. These are
then fed to the high resolution fixed boundary equilibrium solver
HELENA. One Python actor shows the incoming p' and FF' profiles while a
second Python actor shows the resulting equilibrium (see figures). The
path parameter is used to read the profiles from file and to redirect
verbose output to the specified directory.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | none               | equilibrium        |
|             | progen      |                    |                    |
|             | helena      |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

JALPHA-HELENA
~~~~~~~~~~~~~

The workflow jalpha_helena_analytic.xml reads a precalculated
equilibrium (for instance calculated with HELENA) from the data base,
modifies the pressure and current density profiles with the module
JALPHA and calculates the new equilibrium using the HELENA actor. The
intention here is to modify an experimental equilibrium for edge
stability analysis, so called j-\(\alpha\) diagrams. A Python actor
shows the pressure and current density profiles of the original
equilibrium another the modified profiles while a third Python actor
shows the new equilibrium (see figures). The path parameter is optional
and can be used to redirect verbose output to the specified directory.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | equilibrium        | equilibrium        |
|             | jalpha      |                    |                    |
|             | helena      |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp12_linear_MHD_workflows:

Linear MHD Stability Analysis
-----------------------------

ILSA
~~~~

The workflow ilsa_aug.xml reads an equilibrium CPO from the EU-IM database
containing a high resolution fixed boundary equilibrium. It then
analyzes the equilibrium for linear MHD stability and calculates a
spectrum of growthrates and frequencies vs. toroidal mode numbers using
the linear MHD stability actor ILSA. A Python actor is included to
visualize the resulting spectrum (see figure below).

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | equilibrium        | mhd                |
|             | ilsa        |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

EQUAL-HELENA-ILSA
~~~~~~~~~~~~~~~~~

The workflow equal_helena_ilsa.xml reads JET magnetics data from the EU-IM
database and runs the EQUAL free boundary equilibrium reconstruction
code to calculate the equilibrium. The resulting equilibrium is then
reconstructed within the separatrix with the high resolution equilibrium
solver HELENA. Using this high resolution fixed boundary equilibrium,
the linear MHD stability module ILSA determines the stability of the
equilibrium. A Python actor is included to visualize the pressure and
current density profiles along with the safety factor q and a
two-dimensional plot of the flux surfaces. The path parameter is
optional and can be used to redirect verbose output to the specified
directory. The resulting MHD CPO is stored in the database using the
ualcollector actor.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | magdiag pfsystems  | mhd                |
|             | equalslice  | toroidfield        |                    |
|             | helena ilsa | limiter ironmodel  |                    |
|             | cpocontent  | msediag interfdiag |                    |
|             | ualpyactor  | polardiag coreprof |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp12_workflow_progen_helena_ilsa:

PROGEN-HELENA-ILSA
~~~~~~~~~~~~~~~~~~

Two prototype workflows fall in this category:
progen_helena_ilsa_analytic.xml and progen_helena_ilsa_aug.xml. The
first of these generates an equilibrium from an analytic definition of
the profiles and the shape. The second reads experimental profiles and
generates an experimental equilibrium for ASDEX Upgrade. Both workflows
then analyze the linear MHD stability of the resulting equilibria.

Analytic equilibrium
^^^^^^^^^^^^^^^^^^^^

The workflow progen_helena_ilsa_analytic.xml uses the simple tool PROGEN
to generate analytic profiles for p', FF' and the plasma boundary which
are fed to the high resolution fixed boundary equilibrium solver HELENA.
One Python actor shows the incoming p' and FF' profiles while a second
Python actor shows the resulting equilibrium. Using this high resolution
fixed boundary equilibrium, the linear MHD stability module ILSA
determines the stability of the equilibrium. The path parameter is
optional but can be used to read profiles from file and to redirect
verbose output to the specified directory. A third Python actor shows
the resulting linear MHD spectrum (see figure below).

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | none               | equilibrium mhd    |
|             | progen      |                    |                    |
|             | helena      |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ilsa        |                    |                    |
|             | cpocontent  |                    |                    |
+-------------+-------------+--------------------+--------------------+

Experimental equilibrium
^^^^^^^^^^^^^^^^^^^^^^^^

The workflow progen_helena_ilsa_aug.xml uses the simple tool PROGEN to
read the profiles for p', FF' and the plasma boundary from files. These
are then fed to the high resolution fixed boundary equilibrium solver
HELENA. One Python actor shows the incoming p' and FF' profiles while a
second Python actor shows the resulting equilibrium. Using this high
resolution fixed boundary equilibrium, the linear MHD stability module
ILSA determines the stability of the equilibrium. The path parameter is
used to read profiles from file and to redirect verbose output to the
specified directory. A third Python actor shows the resulting linear MHD
spectrum.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | none               | equilibrium mhd    |
|             | progen      |                    |                    |
|             | helena      |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ilsa        |                    |                    |
|             | cpocontent  |                    |                    |
+-------------+-------------+--------------------+--------------------+

JALPHA-HELENA-ILSA
~~~~~~~~~~~~~~~~~~

The workflow jalpha_helena_analytic.xml reads a precalculated
equilibrium (for instance calculated with HELENA) from the data base,
modifies the pressure and current density profiles with the module
JALPHA and calculates the new equilibrium using the HELENA actor. The
modified high resolution fixed boundary equilibrium is then fed to the
linear MHD stability module ILSA which determines the stability of the
equilibrium. The intention here is to modify an experimental equilibrium
for edge stability analysis, so called j-\(\alpha\) diagrams. A Python
actor shows the pressure and current density profiles of the original
equilibrium another the modified profiles while a third Python actor
shows the new equilibrium (see figures). The path parameter is optional
and can be used to redirect verbose output to the specified directory. A
cpocontent actor is included to show the content of the resulting MHD
CPO.

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear      | ualinit     | equilibrium        | equilibrium mhd    |
|             | jalpha      |                    |                    |
|             | helena ilsa |                    |                    |
|             | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

