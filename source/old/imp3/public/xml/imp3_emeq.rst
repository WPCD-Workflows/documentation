.. _imp3_code_parameter_documentation_emeq:

emeq
====

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for emeq

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /dims                     | --Direct | BLOCK: specify the dimensions |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| neq                       | integer  | NEQ, number of equilibrium    |
|                           |          | points                        |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /solver                   | --Direct | BLOCK: parameters for the     |
|                           | ory--    | solver                        |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| convergence               | float    | convergence criterion in      |
|                           |          | EQUILIBRIUM_INTERFACE         |
+---------------------------+----------+-------------------------------+
| aceqlb                    | float    | convergence criterion in      |
|                           |          | E3ASTR                        |
+---------------------------+----------+-------------------------------+
| itermax                   | integer  | maximum iterations in E3ASTR  |
+---------------------------+----------+-------------------------------+

