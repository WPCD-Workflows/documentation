.. _imp3_code_parameter_documentation_eq_ets:

eq_ets
======

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for eq_ets_test

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /input                    | --Direct | BLOCK: specify input CPO      |
|                           | ory--    | options                       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| shot_in                   | integer  | shot number                   |
+---------------------------+----------+-------------------------------+
| run_in                    | integer  | run number                    |
+---------------------------+----------+-------------------------------+
| interpol                  | integer  | interpolation index           |
+---------------------------+----------+-------------------------------+
| time_dep_input            | integer  | 1 implies time dependence in  |
|                           |          | input data                    |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /output                   | --Direct | BLOCK: specify output CPO     |
|                           | ory--    | options                       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| shot_out                  | integer  | shot number                   |
+---------------------------+----------+-------------------------------+
| run_out                   | integer  | run number                    |
+---------------------------+----------+-------------------------------+
| tau_out                   | float    | output frequency              |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /dims                     | --Direct | BLOCK: specify the dimensions |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| nrho                      | integer  | NRHO, number of radial points |
+---------------------------+----------+-------------------------------+
| neq                       | integer  | NEQ, number of equilibrium    |
|                           |          | points                        |
+---------------------------+----------+-------------------------------+
| nion                      | integer  | NION, number of ions          |
+---------------------------+----------+-------------------------------+
| nimp                      | integer  | NIMP, number of impurity      |
|                           |          | types                         |
+---------------------------+----------+-------------------------------+
| nzimp                     | FloatLis | NZIMP, array of impurity      |
|                           | t        | ionisation states             |
+---------------------------+----------+-------------------------------+
| nneut                     | integer  | NNEUT, number of the neutrals |
+---------------------------+----------+-------------------------------+
| ncomp                     | FloatLis | NCOMP, array of components    |
|                           | t        | for each neutral              |
+---------------------------+----------+-------------------------------+
| ntype                     | FloatLis | NTYPE, array of types for     |
|                           | t        | each neutral                  |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /solver                   | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the solver                    |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| rhon                      | float    | boundary value of rho         |
+---------------------------+----------+-------------------------------+
| rho                       | StringLi | expression giving the         |
|                           | st       | relative weighting of points  |
|                           |          | in rho                        |
+---------------------------+----------+-------------------------------+
| solver_type               | integer  | choice of numerical solver    |
+---------------------------+----------+-------------------------------+
| sigma_source              | integer  | option for origin of Plasma   |
|                           |          | electrical conductivity: 0:   |
|                           |          | plasma collisions; 1:         |
|                           |          | transport module; 2: source   |
|                           |          | module                        |
+---------------------------+----------+-------------------------------+
| tau                       | float    | TAU, time step [s]            |
+---------------------------+----------+-------------------------------+
| tau_inc                   | float    | time step increment factor if |
|                           |          | ITERATIONS .LT. ITER_INC      |
+---------------------------+----------+-------------------------------+
| tau_dec                   | float    | time step decrement factor if |
|                           |          | ITERATIONS .GT. ITER_DEC      |
+---------------------------+----------+-------------------------------+
| iter_inc                  | integer  | ITERATION limit to cause      |
|                           |          | increase in time-step         |
+---------------------------+----------+-------------------------------+
| iter_dec                  | integer  | ITERATION limit to cause      |
|                           |          | decrease in time-step         |
+---------------------------+----------+-------------------------------+
| tau_min                   | float    | minimum TAU, time step [s]    |
+---------------------------+----------+-------------------------------+
| tau_max                   | float    | maximum TAU, time step [s]    |
+---------------------------+----------+-------------------------------+
| amix                      | float    | AMIX, mixing factor           |
+---------------------------+----------+-------------------------------+
| convrec                   | float    | PRECISION                     |
+---------------------------+----------+-------------------------------+
| ntime                     | integer  | NTIME, number of time points  |
+---------------------------+----------+-------------------------------+
| time0                     | float    | Start time [s]                |
+---------------------------+----------+-------------------------------+
| nsol                      | integer  | Number of analytical example  |
+---------------------------+----------+-------------------------------+
| ext_equil                 | integer  | call external equilibrium: 0: |
|                           |          | none, 1: BDSEQ, 2: EMEQ, 3:   |
|                           |          | HELENA                        |
+---------------------------+----------+-------------------------------+
| augment_equil             | integer  | if 1 add psi(R,Z), B(R,Z)     |
|                           |          | using splines                 |
+---------------------------+----------+-------------------------------+
| ext_source                | integer  | call external source          |
|                           |          | routines: if 2, call          |
|                           |          | combine_source                |
+---------------------------+----------+-------------------------------+
| ext_transport             | integer  | call external transport       |
|                           |          | routines: if 2, call          |
|                           |          | combine_transport             |
+---------------------------+----------+-------------------------------+
| add_transport             | float    | additional diffusive          |
|                           |          | transport coefficient         |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /startup                  | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the startup                   |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| prof_flag                 | integer  | Flag for primary current      |
|                           |          | quantity: 1-PSI, 2-Q, 3-JPAR  |
+---------------------------+----------+-------------------------------+
| j0_flag                   | integer  | Flag for negative current     |
|                           |          | density: 0-allowed, .GT.      |
|                           |          | 0-cut off                     |
+---------------------------+----------+-------------------------------+
| q0_flag                   | integer  | Flag for q0                   |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /boundary                 | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the boundary condition        |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| psi_bnd_type              | integer  | Type of boundary conditions   |
|                           |          | CURRENT                       |
+---------------------------+----------+-------------------------------+
| ni_bnd_type               | integer  | Type of boundary conditions   |
|                           |          | ION DENSITY                   |
+---------------------------+----------+-------------------------------+
| ti_bnd_type               | integer  | Type of boundary conditions   |
|                           |          | ION TEMPERATURE               |
+---------------------------+----------+-------------------------------+
| te_bnd_type               | integer  | Type of boundary conditions   |
|                           |          | ELECTRON TEMPERATURE          |
+---------------------------+----------+-------------------------------+
| vtor_bnd_type             | integer  | Type of boundary conditions   |
|                           |          | ROTATION                      |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /experimental             | --Direct | BLOCK: specify experimental   |
|                           | ory--    | options                       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| option                    | integer  | option #: 0: disabled         |
+---------------------------+----------+-------------------------------+
| ncolumns                  | integer  | number of columns             |
+---------------------------+----------+-------------------------------+
| evolution_labels          | StringLi | labels of the evolving        |
|                           | st       | quantities                    |
+---------------------------+----------+-------------------------------+
| evolution_data            | FloatLis | values of the evolving        |
|                           | t        | quantities                    |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| StringList                | string   |                               |
+---------------------------+----------+-------------------------------+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+

