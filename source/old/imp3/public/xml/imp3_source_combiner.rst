.. _imp3_code_parameter_documentation_source_combiner:

source_combiner
===============

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for source combiner

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /multipliers              | --Direct | BLOCK: specify multipliers    |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| C_j_exp                   | FloatLis | multiplier for j              |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| C_sigma                   | FloatLis | multiplier for sigma          |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| C_Se_exp                  | FloatLis | multiplier for explicit       |
|                           | t        | electron particle source      |
+---------------------------+----------+-------------------------------+
| C_Se_imp                  | FloatLis | multiplier for implicit       |
|                           | t        | electron particle source      |
+---------------------------+----------+-------------------------------+
| C_Si_exp                  | FloatLis | multiplier for explicit ion   |
|                           | t        | particle source               |
+---------------------------+----------+-------------------------------+
| C_Si_imp                  | FloatLis | multiplier for implicit ion   |
|                           | t        | particle source               |
+---------------------------+----------+-------------------------------+
| C_Sz_exp                  | FloatLis | multiplier for explicit       |
|                           | t        | impurity particle source      |
+---------------------------+----------+-------------------------------+
| C_Sz_imp                  | FloatLis | multiplier for implicit       |
|                           | t        | impurity particle source      |
+---------------------------+----------+-------------------------------+
| C_Qe_exp                  | FloatLis | multiplier for implicit       |
|                           | t        | electron heating source       |
+---------------------------+----------+-------------------------------+
| C_Qe_imp                  | FloatLis | multiplier for implicit       |
|                           | t        | electron heating source       |
+---------------------------+----------+-------------------------------+
| C_Qi_exp                  | FloatLis | multiplier for implicit ion   |
|                           | t        | heating source                |
+---------------------------+----------+-------------------------------+
| C_Qi_imp                  | FloatLis | multiplier for implicit ion   |
|                           | t        | heating source                |
+---------------------------+----------+-------------------------------+
| C_Qz_exp                  | FloatLis | multiplier for implicit       |
|                           | t        | impurity heating source       |
+---------------------------+----------+-------------------------------+
| C_Qz_imp                  | FloatLis | multiplier for implicit       |
|                           | t        | impurity heating source       |
+---------------------------+----------+-------------------------------+
| C_Ui_exp                  | FloatLis | multiplier for explicit ion   |
|                           | t        | toroidal velocity source      |
+---------------------------+----------+-------------------------------+
| C_Ui_imp                  | FloatLis | multiplier for implicit ion   |
|                           | t        | toroidal velocity source      |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+

