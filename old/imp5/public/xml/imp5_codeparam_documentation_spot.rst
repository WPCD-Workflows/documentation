.. _imp5_code_parameter_documentation_spot:

spot
====

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:Code parameters for Spot (Fokker-Planck code)

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
| nperstep                  | integer_ | Number of markers to be       |
|                           | minInclu | created every big time step   |
|                           | sive_1   |                               |
+---------------------------+----------+-------------------------------+
| nout1d                    | integer_ | Resolution of output          |
|                           | minInclu | 1D-profiles                   |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| nout2dr                   | integer_ | R-Resolution of output        |
|                           | minInclu | 2D-profiles                   |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| nout2dz                   | integer_ | Z-Resolution of output        |
|                           | minInclu | 2D-profiles                   |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| ksolver                   | integer_ | Flag for internal solver: 1 = |
|                           | minmaxIn | (R,Z) coordinates, 2 =        |
|                           | clusive_ | (PSI,THETA) Boozer            |
|                           | 12       | coordinates                   |
+---------------------------+----------+-------------------------------+
| bigwidth                  | float_mi | Duration of a big time step   |
|                           | nmaxIncl | (sec) for source update, RFOF |
|                           | usive_do | E-field normalisation, etc    |
|                           | t0001_do |                               |
|                           | t01      |                               |
+---------------------------+----------+-------------------------------+
| icrh_heating              | integer_ | Flag for ICRH heating (0 =    |
|                           | minmaxIn | NO, 1 = YES)                  |
|                           | clusive_ |                               |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+
| debug_mode                | integer_ | Flag for debug mode (0 =      |
|                           | minmaxIn | normal execution, 1 = debug   |
|                           | clusive_ | mode)                         |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+
| source_flag               | integer_ | Flag for source option        |
|                           | minmaxIn | (0=Spot-generated-alphas,     |
|                           | clusive_ | 2=Spot-generated-thermals-for |
|                           | 14       | -ICRH,                        |
|                           |          | 3=Spot-generated-NBI,         |
|                           |          | 4=marker-source)              |
+---------------------------+----------+-------------------------------+
| icrh_ion_mass             | float_mi | Mass of followed              |
|                           | nmaxIncl | ICRH-accelerated ion (if any) |
|                           | usive_me |                               |
|                           | ndeleiv  |                               |
+---------------------------+----------+-------------------------------+
| icrh_ion_charge           | float_mi | Charge of followed            |
|                           | nmaxIncl | ICRH-accelerated ion (if any) |
|                           | usive_me |                               |
|                           | ndeleiv  |                               |
+---------------------------+----------+-------------------------------+
| kforce_xml                | integer_ | Flag to force the use of XML  |
|                           | minmaxIn | input file for ICRF heating   |
|                           | clusive_ | (when = 1)                    |
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
| integer_minmaxInclusive_1 | integer  | Min(<=): 1 Max(>=): 2         |
| 2                         |          |                               |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_1 | integer  | Min(<=): 1 Max(>=): 4         |
| 4                         |          |                               |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_0 | integer  | Min(<=): 0 Max(>=): 1         |
| 1                         |          |                               |
+---------------------------+----------+-------------------------------+
| float_minmaxInclusive_dot | float    | Min(<=): 1.e-4 Max(>=): 0.1   |
| 0001_dot01                |          |                               |
+---------------------------+----------+-------------------------------+
| float_minmaxInclusive_men | float    | Min(<=): 1.0 Max(>=): 300.0   |
| deleiv                    |          |                               |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
