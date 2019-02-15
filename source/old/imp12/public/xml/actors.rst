.. toctree::
   :maxdepth: 2

   ../../../imp12/public/xml/fill_tables

.. _imp12_actors:

Actors
======

IMP12 has provided a number of
Kepler
actors
for testing and use on the
EU-IM Gateway
. The list is constantly expanding and will regularly be updated.
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
   - database_tools
   - RWM
   - sawtooth

.. _imp12_free_boundary_equilibrium_actors:

Free Boundary Equilibrium Reconstruction
----------------------------------------

.. _imp12_equalslice_actor:

EQUALslice
~~~~~~~~~~

The EQUALslice actor reads experimental signals from the data base and
calculates a free boundary equilibrium for the given time slice.

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

The parameter time determines the time point at which the experimental
signals will be sliced. The parameter iteration gives the number of
iterations.

.. _imp12_fixed_boundary_equilibrium_actors:

High Resolution Fixed Boundary Equilibrium Reconstruction
---------------------------------------------------------

.. _imp12_helena_actor:

HELENA
~~~~~~

The HELENA actor calculates a fixed boundary high resolution equilibrium
in straight field line coordinates starting from plasma profiles like
p', FF', p, <\( j_{\rm tor} \\)>, the corresponding radial points like
\\( \\Psi \\), \\( \\rho_{\rm tor} \\), \\( \\rho_{\rm vol} \\) and the
boundary curve for a fixed boundary equilibrium calculation.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | equilibrium        | path               |
| slice       |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

The parameter path is optional and allows you to redirect verbose output
to the specific directory.

.. _imp12_linear_MHD_actors:

Linear MHD Stability Analysis
-----------------------------

.. _imp12_ilsa_actor:

ILSA
~~~~

The ILSA actor performs a linear MHD stability for a fixed boundary high
resolution equilibrium in straight fild line coordinates.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | mhd                | path               |
| slice       |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

The parameter path is optional and allows you to redirect verbose output
to the specific directory.

.. _imp12_numerical_tools_actors:

Numerical Tools
---------------

.. _imp12_progen_actor:

PROGEN
~~~~~~

The PROGEN actor either reads plasma profiles like p', FF', p, <\(
j_{\rm tor} \\)>, the corresponding radial points like \\( \\Psi \\),
\\( \\rho_{\rm tor} \\), \\( \\rho_{\rm vol} \\) and the boundary curve
for a fixed boundary equilibrium calculation from files or constructs
them from analytic formulae.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | equilibrium        | active path_tag    |
| slice       | (empty)     |                    | path               |
+-------------+-------------+--------------------+--------------------+

The parameter active allows you to deactivate the PROGEN actor
altogether if set to 0. The parameter path is optional and allows you to
redirect verbose output to the specific directory. path_tag should
remain empty.

.. _imp12_jalpha_actor:

JALPHA
~~~~~~

The JALPHA actor takes the pressure and current density profile from an
incoming equilibrium CPO together with the radial positions \\(
\\rho_{\rm vol} \\) and modifies them by scaling the edge pressure
gradient and edge current density. Doing so, it maintains the total
plasma energy \\( W_{\rm MHD} \\) and the total plasma current \\(
I_{\rm p} \\). It is designed to generate profiles for input to the
HELENA actors for a j-\( \\alpha \\) study. Recent extensions allow to
scale the width of the pedestal as well as the normalized plasma beta.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | equilibrium        | path scan_pscan_j  |
| slice       |             |                    |                    |
+-------------+-------------+--------------------+--------------------+

The parameter path is optional and allows you to redirect verbose output
to the specific directory. The parameter scan_p allows you to specify
the scaling factor for pedestal height, pedestal width, or plasma beta
modifications for the pressure profile. The parameter scan_j allows you
to specify the scaling factor for pedestal height and width for the flux
surface averaged current density profile.

.. _imp12_database_tools_actors:

Database Tools
--------------

.. _imp12_equilibrium2ual_actor:

EQUILIBRIUM2UAL
~~~~~~~~~~~~~~~

The EQUILIBRIUM2UAL actor reads an equilibrium CPO from the specified
standardized ASCII file and feeds it to the output port. Currently, the
ASCII file is supposed to contain a single time slice as a scalar.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | equilibrium        | path               |
| slice       | (empty)     |                    |                    |
+-------------+-------------+--------------------+--------------------+

The path contains the path to the ASCII file including the name of the
file.

.. _imp12_mhd2ual_actor:

MHD2UAL
~~~~~~~

The MHD2UAL actor reads an mhd CPO from the specified standardized ASCII
file and feeds it to the output port. Currently, the ASCII file is
supposed to contain a single time slice as a 1D vector.

+-------------+-------------+--------------------+--------------------+
| Type        | Input CPOs  | Output CPOs        | Kepler parameters  |
+=============+=============+====================+====================+
| single time | equilibrium | mhd                | path               |
| slice       | (empty)     |                    |                    |
+-------------+-------------+--------------------+--------------------+

The path contains the path to the ASCII file including the name of the
file.

