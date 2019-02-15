.. _imp3_code_parameter_documentation_source_dummy:

source_dummy
============

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for eq_ets_test

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /heating                  | --Direct | BLOCK: specify heating        |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| WTOT                      | float    | Total heating power [W]       |
+---------------------------+----------+-------------------------------+
| RHEAT                     | float    | Position of the heating       |
|                           |          | profile maximum [m]           |
+---------------------------+----------+-------------------------------+
| FRACT                     | FloatLis | fraction of power going in    |
|                           | t        | different components [-];     |
|                           |          | from 1 to NION represent      |
|                           |          | ions, last index - electrons  |
+---------------------------+----------+-------------------------------+
| FWHEAT                    | FloatLis | Full width at the half        |
|                           | t        | maximum of heating profile    |
|                           |          | [m]; from 1 to NION represent |
|                           |          | ions, last index - electrons  |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /particles                | --Direct | BLOCK: specify particles      |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| AMI                       | float    | Atomic mass number of         |
|                           |          | injected ions                 |
+---------------------------+----------+-------------------------------+
| STOT                      | float    | Injection rate [s^-1]         |
+---------------------------+----------+-------------------------------+
| RPART                     | float    | Position of the source        |
|                           |          | profile maximum [m]           |
+---------------------------+----------+-------------------------------+
| FWPART                    | float    | Full width at the half        |
|                           |          | maximum of source profile [m] |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /momentum                 | --Direct | BLOCK: specify momentum       |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| AMM                       | float    | Atomic mass number of ions    |
|                           |          | receiving momentum input      |
+---------------------------+----------+-------------------------------+
| UTOT                      | float    | Total momentum [kg*m^2*s^-1]  |
+---------------------------+----------+-------------------------------+
| RMOM                      | float    | Position of the momentum      |
|                           |          | profile maximum [m]           |
+---------------------------+----------+-------------------------------+
| FWMOM                     | float    | Full width at the half        |
|                           |          | maximum of momentum profile   |
|                           |          | [m]                           |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /currents                 | --Direct | BLOCK: specify currents       |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| JNITOT                    | float    | Total noninductive current    |
|                           |          | [A]                           |
+---------------------------+----------+-------------------------------+
| RCURR                     | float    | Position of the current       |
|                           |          | profile maximum [m]           |
+---------------------------+----------+-------------------------------+
| FWCURR                    | float    | Full width at the halth       |
|                           |          | maximum of current profile    |
|                           |          | [m]                           |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+

