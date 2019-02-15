.. _imp5_code_parameter_documentation_risk:

risk
====

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:Code parameters for Risk (Fokker-Planck code)

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
| n_out_profiles            | integer_ | Resolution of the output 1D   |
|                           | minInclu | profiles                      |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| dx_resolution             | float_mi | Normalized velocity           |
|                           | nInclusi | resolution (v/vth)            |
|                           | ve_dot00 |                               |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+
| fac_implicit              | float_mi | Implicit/explicit             |
|                           | nInclusi | contribution for integration  |
|                           | ve_dot1  | scheme (Crank-Nicholson or    |
|                           |          | so)                           |
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
| integer_minInclusive_2    | integer  | Min(<=): 2                    |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_0 | integer  | Min(<=): 0 Max(>=): 1         |
| 1                         |          |                               |
+---------------------------+----------+-------------------------------+
| float_minInclusive_dot000 | float    | Min(<=): 0.0001               |
| 1                         |          |                               |
+---------------------------+----------+-------------------------------+
| float_minInclusive_dot1   | float    | Min(<=): 0.1                  |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
