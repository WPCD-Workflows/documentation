.. _imp5_code_parameter_documentation_nbisim:

nbisim
======

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:Code parameters for hcd2coresource

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
| verbosity                 | nonNegat | Regulates the amount of       |
|                           | iveInteg | standard output. 1 - only     |
|                           | er       | error messages and warnings;  |
|                           |          | 2 - idenitify start and end   |
|                           |          | of code; 3 - Main results; 4  |
|                           |          | - Detailed logging.           |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| positiveInteger           | integer  | Min(<=): 1                    |
+---------------------------+----------+-------------------------------+
| nonNegativeInteger        | integer  | Min(<=): 0                    |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
