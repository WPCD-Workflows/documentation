.. _imp3_code_parameter_documentation_neutrals_settings:

neutrals_settings
=================

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for neutrals

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /boundary_conditions      | --Direct | BLOCK: specify boundary       |
|                           | ory--    | conditions                    |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| n0_bnd                    | float    | boundary condition for n0     |
+---------------------------+----------+-------------------------------+
| t0_bnd                    | float    | boundary condition for t0     |
+---------------------------+----------+-------------------------------+
| neu_bnd_type              | integer  | neutral boundary condition    |
|                           |          | type                          |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /coefficients             | --Direct | BLOCK: coefficients           |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| coef_recycle              | float    | recycling coefficient         |
+---------------------------+----------+-------------------------------+

