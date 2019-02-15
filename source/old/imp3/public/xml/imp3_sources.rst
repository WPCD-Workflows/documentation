.. _imp3_code_parameter_documentation_sources:

sources
=======

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:GLOBAL: parameters for generic source modules (ECRH, ICRH,
NBI)

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /coresource               | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the coresource CPO            |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| j                         | StringLi | expression for j as a         |
|                           | st       | function of a normalized      |
|                           |          | radial coordinate [A/m^2]     |
+---------------------------+----------+-------------------------------+
| qe_exp                    | StringLi | expression for the explicit   |
|                           | st       | part of the electron heating  |
|                           |          | as a function of a normalized |
|                           |          | radial coordinate [W/m^3]     |
+---------------------------+----------+-------------------------------+
| qe_imp                    | StringLi | expression for the implicit   |
|                           | st       | part of the electron heating  |
|                           |          | as a function of a normalized |
|                           |          | radial coordinate [W/m^3/eV   |
|                           |          | ??]                           |
+---------------------------+----------+-------------------------------+
| qi_exp                    | StringLi | NION expressions for the      |
|                           | st       | explicit part of the ion      |
|                           |          | heating as a function of a    |
|                           |          | normalized radial coordinate  |
|                           |          | [W/m^3]                       |
+---------------------------+----------+-------------------------------+
| qi_imp                    | StringLi | NION expressions for the      |
|                           | st       | implicit part of the ion      |
|                           |          | heating as a function of a    |
|                           |          | normalized radial coordinate  |
|                           |          | [W/m^3/eV ??]                 |
+---------------------------+----------+-------------------------------+
| si_exp                    | StringLi | NION expressions for the      |
|                           | st       | explicit part of the ion      |
|                           |          | particle source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [/m^3/s]           |
+---------------------------+----------+-------------------------------+
| si_imp                    | StringLi | NION expressions for the      |
|                           | st       | implicit part of the ion      |
|                           |          | particle source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [/m^3/s.m^3 ??]    |
+---------------------------+----------+-------------------------------+
| ui_exp                    | StringLi | NION expressions for the      |
|                           | st       | explicit part of the toroidal |
|                           |          | velocity source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [??]               |
+---------------------------+----------+-------------------------------+
| ui_imp                    | StringLi | NION expressions for the      |
|                           | st       | implicit part of the toroidal |
|                           |          | velocity source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [??]               |
+---------------------------+----------+-------------------------------+
| j_int                     | float    | desired integral of j as a    |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [A/m^2]     |
|                           |          | (not yet implemented)         |
+---------------------------+----------+-------------------------------+
| qe_exp_int                | float    | desired integral of the       |
|                           |          | explicit part of the electron |
|                           |          | heating as a function of a    |
|                           |          | normalized radial coordinate  |
|                           |          | [W/m^3]                       |
+---------------------------+----------+-------------------------------+
| qe_imp_int                | float    | desired integral of the       |
|                           |          | implicit part of the electron |
|                           |          | heating as a function of a    |
|                           |          | normalized radial coordinate  |
|                           |          | [W/m^3/eV ??] (not yet        |
|                           |          | implemented)                  |
+---------------------------+----------+-------------------------------+
| qi_exp_int                | float    | NION desired integrals of the |
|                           |          | explicit part of the ion      |
|                           |          | heating as a function of a    |
|                           |          | normalized radial coordinate  |
|                           |          | [W/m^3]                       |
+---------------------------+----------+-------------------------------+
| qi_imp_int                | float    | NION desired integrals of the |
|                           |          | implicit part of the ion      |
|                           |          | heating as a function of a    |
|                           |          | normalized radial coordinate  |
|                           |          | [W/m^3/eV ??] (not yet        |
|                           |          | implemented)                  |
+---------------------------+----------+-------------------------------+
| si_exp_int                | float    | NION desired integrals of the |
|                           |          | explicit part of the ion      |
|                           |          | particle source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [/m^3/s]           |
+---------------------------+----------+-------------------------------+
| si_imp_int                | float    | NION desired integrals of the |
|                           |          | implicit part of the ion      |
|                           |          | particle source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [/m^3/s.m^3 ??]    |
|                           |          | (not yet implemented)         |
+---------------------------+----------+-------------------------------+
| ui_exp_int                | float    | NION desired integrals of the |
|                           |          | explicit part of the toroidal |
|                           |          | velocity source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [??]               |
+---------------------------+----------+-------------------------------+
| ui_imp_int                | float    | NION desired integrals of the |
|                           |          | implicit part of the toroidal |
|                           |          | velocity source as a function |
|                           |          | of a normalized radial        |
|                           |          | coordinate [??] (not yet      |
|                           |          | implemented)                  |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| StringList                | string   |                               |
+---------------------------+----------+-------------------------------+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+

