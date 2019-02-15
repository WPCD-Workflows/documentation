.. _imp3_code_parameter_documentation_transport_combiner:

transport_combiner
==================

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for transport combiner

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
| C_sigma                   | FloatLis | multiplier for sigma          |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| C_ne_diff                 | FloatLis | multiplier for electron       |
|                           | t        | particle diffusivity          |
+---------------------------+----------+-------------------------------+
| C_ne_vconv                | FloatLis | multiplier for electron       |
|                           | t        | particle convective pinch     |
+---------------------------+----------+-------------------------------+
| C_ni_diff                 | FloatLis | multiplier for ion particle   |
|                           | t        | diffusivity                   |
+---------------------------+----------+-------------------------------+
| C_ni_vconv                | FloatLis | multiplier for ion particle   |
|                           | t        | convective pinch              |
+---------------------------+----------+-------------------------------+
| C_te_diff                 | FloatLis | multiplier for electron       |
|                           | t        | thermal diffusivity           |
+---------------------------+----------+-------------------------------+
| C_te_vconv                | FloatLis | multiplier for electron       |
|                           | t        | thermal convective pinch      |
+---------------------------+----------+-------------------------------+
| C_ti_diff                 | FloatLis | multiplier for ion thermal    |
|                           | t        | diffusivity                   |
+---------------------------+----------+-------------------------------+
| C_ti_vconv                | FloatLis | multiplier for ion thermal    |
|                           | t        | convective pinch              |
+---------------------------+----------+-------------------------------+
| C_vtor_diff               | FloatLis | multiplier for ion toroidal   |
|                           | t        | velocity diffusivity          |
+---------------------------+----------+-------------------------------+
| C_vtor_vconv              | FloatLis | multiplier for ion toroidal   |
|                           | t        | velocity convective pinch     |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /checks                   | --Direct | BLOCK: checks                 |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| negative_diff             | integer  | check for negative diffusion  |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+

