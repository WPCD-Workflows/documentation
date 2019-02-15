.. toctree::
   :maxdepth: 2

   ../../../imp12/public/xml/fixed_boundary_equilibrium_fill_table
   ../../../imp12/public/xml/helena_output_equilibrium_fill_table
   ../../../imp12/public/xml/linear_MHD_fill_table
   ../../../imp12/public/xml/ilsa_output_mhd_fill_table

.. _imp12_fill_tables:

Fill Tables
===========

The
fill tables
in this section provide a fast way to check which fields in the output
CPOs
of the
Kepler
actors
provided by IMP12 are filled and which should be filled.
The color coding is as follows:

-  gray
   - data structure or field not filled
-  lightgreen
   - data structure partially filled
-  purple
   - data structure or field filled
-  red
   - data structure or field not filled but should be (partially) filled

The numbers in parentheses indicate the number of substructures. For the
entire CPO, the number in parentheses signals the total number of fields
that can be filled in the CPO.
The data structure is broken down in blocks for the substructures
directly below the CPO level (level 1 structures). They are evenly
distributed in two columns. No special meaning is attached to this
distribution.
The list is constantly expanding and will regularly be updated.
Currently, only fill tables for the most recent versions of the actors
are specified.
The actors can be found in the
KeplerActors
project under Gforge.
IMP12's actors are hosted in the following categories:
.. code-block:: console

   - fixed_boundary_equilibrium
   - free_boundary_equilibrium
   - linear_MHD
   - NTM
   - numerical_tools
   - RWM
   - sawtooth

.. _imp12_free_boundary_equilibrium_actors_fill:

Free Boundary Equilibrium Reconstruction
----------------------------------------

.. _imp12_equalslice_actor_fill:

EQUALslice
~~~~~~~~~~

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | magdiag     | equilibrium        | time iteration     |
| slice       | pfsystems   |                    |                    |
|             | toroidfield |                    |                    |
|             | limiter     |                    |                    |
|             | ironmodel   |                    |                    |
|             | msediag     |                    |                    |
|             | interfdiag  |                    |                    |
|             | polardiag   |                    |                    |
|             | coreprof    |                    |                    |
+-------------+-------------+--------------------+--------------------+

fill table not yet available

.. _imp12_fixed_boundary_equilibrium_actors_fill:

High Resolution Fixed Boundary Equilibrium Reconstruction
---------------------------------------------------------

At release status all high resolution fixed boundary equilibrium modules
shall return an equilibrium CPO which fulfills the targeted fill status
given below. Modules building on the equilibrium output from a fixed
boundary equilibrium module may assume the existence of data in all
filled fields. Caution need be applied though to ensure that the
equilibrium geometric data are given in the desired coordinate system.
Possibly, coordinate transformations need to be applied to the output
CPO before feeding it to the next module.
.. _imp12_helena_actor_fill:

HELENA
~~~~~~

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | `equilibrium <#hel | path               |
| slice       |             | ena_equilibrium_cp |                    |
|             |             | o_fill>`__         |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp12_linear_MHD_actors_fill:

Linear MHD Stability Analysis
-----------------------------

At release status all linear MHD stability modules shall return an mhd
CPO which fulfills the targeted fill status given below. Modules
building on the mhd output from a linear MHD stability module may assume
the existence of data in all filled fields.
.. _imp12_ilsa_actor_fill:

ILSA
~~~~

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | mhd                | path               |
| slice       |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp12_numerical_tools_actors_fill:

Numerical Tools
---------------

.. _imp12_progen_actor_fill:

PROGEN
~~~~~~

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | equilibrium        | active path_tag    |
| slice       | (empty)     |                    | path               |
+-------------+-------------+--------------------+--------------------+

fill table not yet available

.. _imp12_jalpha_actor_fill:

JALPHA
~~~~~~

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | equilibrium        | path               |
| slice       |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

fill table not yet available

