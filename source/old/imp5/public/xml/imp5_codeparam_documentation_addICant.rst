.. _imp5_code_parameter_documentation_addICant:

addICant
========

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:IC antennas: parameters

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /general                  | --Direct | Frequency and power           |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| frequency                 | float    | frequency [Hz]                |
+---------------------------+----------+-------------------------------+
| power                     | float    | Coupled power [W]             |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /straps                   | --Direct | Strap specific parameters;    |
|                           | ory--    | strap geometry asnd phasing   |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| nstrap                    | integer  | Number of straps              |
+---------------------------+----------+-------------------------------+
| phase                     | FloatLis | Feeding phase [rad]           |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| phi_centre                | FloatLis | Toroidal angle of antenna     |
|                           | t        | position [rad]                |
+---------------------------+----------+-------------------------------+
| width                     | FloatLis | Strap width [m]               |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| dist2wall                 | FloatLis | Distance strap-wall [m]       |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| ncoord_strap              | integer  | Number of points to describe  |
|                           |          | the poloidal strap extension  |
|                           |          | (?)                           |
+---------------------------+----------+-------------------------------+
| coord_strap_r             | FloatLis | R coordinate of strap         |
|                           | t        | position [m]                  |
+---------------------------+----------+-------------------------------+
| coord_strap_z             | FloatLis | Z coordinate of strap         |
|                           | t        | position [m]                  |
+---------------------------+----------+-------------------------------+
| verbosity                 | nonNegat | Regulates the amount of       |
|                           | iveInteg | standard output. 0 - only     |
|                           | er       | error messages; 1 - give      |
|                           |          | warnings messages; 2 -        |
|                           |          | idenitify start and end of    |
|                           |          | code; 3 - Main results; 4 -   |
|                           |          | Detailed logging.             |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
