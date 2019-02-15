.. _imp5_code_parameter_documentation_StixReDist:

StixReDist
==========

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /stix_redist              | --Direct |                               |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| max_iterations            | integer  | Maximum number of iterations  |
|                           |          | per magnetic surface          |
+---------------------------+----------+-------------------------------+
| tolerance_Teff            | float    | Tolerance on Teff evolution   |
|                           |          | to stop the iterative scheme  |
+---------------------------+----------+-------------------------------+
| N_velocity_grid           | integer  | Number of points in velocity  |
|                           |          | grid                          |
+---------------------------+----------+-------------------------------+
| target_ions               | integer  | Switch to choose between      |
|                           |          | iterating on all ion          |
|                           |          | species(=0) or on a single    |
|                           |          | one(=ion_index)               |
+---------------------------+----------+-------------------------------+
| use_internal_power        | boolean  | Switch for computing RF power |
|                           |          | absorption internally(=1) or  |
|                           |          | importing it from CPOs(=0)    |
+---------------------------+----------+-------------------------------+
| total_power               | float    | Total RF Power [W] (only used |
|                           |          | when use_internal_power=1)    |
+---------------------------+----------+-------------------------------+

2014-12-19 17:47:12Z tjohnson $
