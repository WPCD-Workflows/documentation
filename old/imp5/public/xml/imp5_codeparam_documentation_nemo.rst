.. _imp5_code_parameter_documentation_nemo:

nemo
====

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:Code parameters for Nemo (neutral beam deposition code)

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /select_output_resolution | --Direct |                               |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| n_out_profiles            | integer_ | Resolution of the output 1D   |
|                           | minInclu | profiles                      |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| n_pitch_resol             | integer_ | Resolution of the output      |
|                           | minInclu | pitch angle profile           |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| n_output_2d_r             | integer_ | R-resolution of the output    |
|                           | minInclu | (R,Z) 2D profiles             |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| n_output_2d_z             | integer_ | Z-resolution of the output    |
|                           | minInclu | (R,Z) 2D profiles             |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| n_output_2d_f             | integer_ | PHI-resolution of the output  |
|                           | minInclu | (R,Z,PHI) profiles            |
|                           | sive_1   |                               |
+---------------------------+----------+-------------------------------+
| debug_mode                | integer_ | Flag for debug mode (0 =      |
|                           | minmaxIn | normal execution, 1 = debug   |
|                           | clusive_ | mode)                         |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| integer_minInclusive_1    | integer  | Min(<=): 1                    |
+---------------------------+----------+-------------------------------+
| integer_minInclusive_2    | integer  | Min(<=): 2                    |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_0 | integer  | Min(<=): 0 Max(>=): 1         |
| 1                         |          |                               |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
