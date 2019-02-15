.. _imp3_code_parameter_documentation_ets_analytics:

ets_analytics
=============

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for solver_test

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /output                   | --Direct | BLOCK: specify output CPO     |
|                           | ory--    | options                       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| shot                      | integer  | shot number                   |
+---------------------------+----------+-------------------------------+
| run                       | integer  | run number                    |
+---------------------------+----------+-------------------------------+
| db                        | string   | output database format        |
|                           |          | (mdsplus or hdf5) [default:   |
|                           |          | mdsplus]                      |
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
| nion                      | integer  | NION, number of ions          |
+---------------------------+----------+-------------------------------+
| nimp                      | integer  | NIMP, number of impurity      |
|                           |          | types                         |
+---------------------------+----------+-------------------------------+
| nzimp                     | integer  | MAX_NZIMP, number of impurity |
|                           |          | ionisation states             |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /solver                   | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the solver                    |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
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
| amix                      | float    | AMIX, mixing factor           |
+---------------------------+----------+-------------------------------+
| convrec                   | float    | PRECISION                     |
+---------------------------+----------+-------------------------------+
| ntime                     | integer  | NTIME, number of time points  |
+---------------------------+----------+-------------------------------+
| nsol                      | integer  | Number of analytical example  |
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

