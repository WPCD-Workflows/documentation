.. _imp3_code_parameter_documentation_prepare_input_cpos:

prepare_input_cpos
==================

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
| /dimensions               | --Direct | BLOCK: specify the dimensions |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| nrho                      | integer  | NRHO, number of radial points |
+---------------------------+----------+-------------------------------+
| nion                      | integer  | NION, number of ions          |
+---------------------------+----------+-------------------------------+
| nimp                      | integer  | NIMP, number of impurity      |
|                           |          | types                         |
+---------------------------+----------+-------------------------------+
| nzimp                     | FloatLis | NZIMP, array of impurity      |
|                           | t        | ionisation states             |
+---------------------------+----------+-------------------------------+
| ntheta                    | integer  | NTHETA, number of points in   |
|                           |          | theta                         |
+---------------------------+----------+-------------------------------+
| nneut                     | integer  | NNEUT, number of the neutrals |
+---------------------------+----------+-------------------------------+
| ncomp                     | FloatLis | NCOMP, array of components    |
|                           | t        | for each neutral              |
+---------------------------+----------+-------------------------------+
| ntype                     | FloatLis | NTYPE, array of types for     |
|                           | t        | each neutral                  |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /output                   | --Direct | BLOCK: specify output CPO     |
|                           | ory--    | options                       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| shot                      | integer  | shot number                   |
+---------------------------+----------+-------------------------------+
| run                       | integer  | run number                    |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /global                   | --Direct | BLOCK: specify global options |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| time                      | float    | Time in the equilibriun CPO   |
|                           |          | [s]                           |
+---------------------------+----------+-------------------------------+
| R0                        | float    | R0, reference R [m]           |
+---------------------------+----------+-------------------------------+
| B0                        | float    | B0, vacuum B ar R0 [T]        |
+---------------------------+----------+-------------------------------+
| A0                        | float    | A0, minor radius [m]          |
+---------------------------+----------+-------------------------------+
| Ip                        | float    | Ip, plasma current [A]        |
+---------------------------+----------+-------------------------------+
| Rgeo                      | float    | Rgeo, geometric axis of       |
|                           |          | plasma [m]                    |
+---------------------------+----------+-------------------------------+
| rho                       | StringLi | expression giving the         |
|                           | st       | relative weighting of points  |
|                           |          | in rho                        |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /equilibrium              | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the equilibrium CPO           |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| equilibrium_ext           | string   | Reference CPO for equilibrium |
|                           |          | in the form                   |
|                           |          | USER/DEVICE/VERSION/SHOT/RUN  |
|                           |          | or SHOT/RUN; not used if      |
|                           |          | blank                         |
+---------------------------+----------+-------------------------------+
| el                        | float    | Ellipticity                   |
+---------------------------+----------+-------------------------------+
| tr_u                      | float    | Upper triangularity           |
+---------------------------+----------+-------------------------------+
| tr_l                      | float    | Lower triangularity           |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /coreprof                 | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the coreprof CPO              |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| coreprof_ext              | string   | Reference CPO for coreprof in |
|                           |          | the form                      |
|                           |          | USER/DEVICE/VERSION/SHOT/RUN  |
|                           |          | or SHOT/RUN; not used if      |
|                           |          | blank                         |
+---------------------------+----------+-------------------------------+
| zn                        | FloatLis | NION list of nuclear charges  |
|                           | t        | [units of proton charge]      |
+---------------------------+----------+-------------------------------+
| amn                       | FloatLis | NION list of atomic masses    |
|                           | t        | [amu]                         |
+---------------------------+----------+-------------------------------+
| zion                      | FloatLis | NION list of charge states    |
|                           | t        | [units of proton charge]      |
+---------------------------+----------+-------------------------------+
| ni                        | StringLi | NION list of expressions      |
|                           | st       | giving the ion desities as a  |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [/m^3]      |
+---------------------------+----------+-------------------------------+
| ti                        | StringLi | NION list of expressions      |
|                           | st       | giving the ion temperatures   |
|                           |          | as a function of a normalized |
|                           |          | radial coordinate [eV]        |
+---------------------------+----------+-------------------------------+
| te                        | StringLi | expression giving the         |
|                           | st       | electron temperature as a     |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [eV]        |
+---------------------------+----------+-------------------------------+
| vtor                      | StringLi | NION list of expressions      |
|                           | st       | giving the ion toroidal       |
|                           |          | velocities as a function of a |
|                           |          | normalized radial coordinate  |
|                           |          | [m/s]                         |
+---------------------------+----------+-------------------------------+
| jpar                      | StringLi | expression giving the         |
|                           | st       | parallel current density as a |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [A/m^2]     |
+---------------------------+----------+-------------------------------+
| qsf                       | StringLi | expression giving the safety  |
|                           | st       | factor as a function of a     |
|                           |          | normalized radial coordinate  |
|                           |          | []                            |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /coretransp               | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the coretransp CPO            |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| coretransp_ext            | string   | Reference CPO for coretransp  |
|                           |          | in the form                   |
|                           |          | USER/DEVICE/VERSION/SHOT/RUN  |
|                           |          | or SHOT/RUN; not used if      |
|                           |          | blank                         |
+---------------------------+----------+-------------------------------+
| sigma                     | StringLi | expression giving the         |
|                           | st       | parallel conductivity as a    |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [???]       |
+---------------------------+----------+-------------------------------+
| ne_diff                   | StringLi | 3 expressions giving the      |
|                           | st       | electron particle             |
|                           |          | diffusivities [m^2/s]         |
+---------------------------+----------+-------------------------------+
| ne_conv                   | StringLi | 3 expressions giving the      |
|                           | st       | electron pinch velocities     |
|                           |          | [m/s]                         |
+---------------------------+----------+-------------------------------+
| ni_diff                   | StringLi | NION \* 3 expressions giving  |
|                           | st       | the ion particle              |
|                           |          | diffusivities [m^2/s]         |
+---------------------------+----------+-------------------------------+
| ni_conv                   | StringLi | NION \* 3 expressions giving  |
|                           | st       | the ion pinch velocities      |
|                           |          | [m/s]                         |
+---------------------------+----------+-------------------------------+
| te_diff                   | StringLi | expression giving the         |
|                           | st       | electron thermal diffusivity  |
|                           |          | [m^2/s]                       |
+---------------------------+----------+-------------------------------+
| te_conv                   | StringLi | expression giving the         |
|                           | st       | electron thermal pinch        |
|                           |          | velocity [m/s]                |
+---------------------------+----------+-------------------------------+
| ti_diff                   | StringLi | NION expressions giving the   |
|                           | st       | ion thermal diffusivities     |
|                           |          | [m^2/s]                       |
+---------------------------+----------+-------------------------------+
| ti_conv                   | StringLi | NION expressions giving the   |
|                           | st       | ion thermal pinch velocities  |
|                           |          | [m/s]                         |
+---------------------------+----------+-------------------------------+
| vtor_diff                 | StringLi | NION expressions giving the   |
|                           | st       | ion toroidal velocity         |
|                           |          | diffusivities [m^2/s]         |
+---------------------------+----------+-------------------------------+
| vtor_conv                 | StringLi | NION expressions giving the   |
|                           | st       | ion toroidal velocity pinch   |
|                           |          | velocities [m/s]              |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /coresource               | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the coresource CPO            |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| coresource_ext            | string   | Reference CPO for coresource  |
|                           |          | in the form                   |
|                           |          | USER/DEVICE/VERSION/SHOT/RUN  |
|                           |          | or SHOT/RUN; not used if      |
|                           |          | blank                         |
+---------------------------+----------+-------------------------------+
| j                         | StringLi | expression for j as a         |
|                           | st       | function of a normalized      |
|                           |          | radial coordinate [A/m^2]     |
+---------------------------+----------+-------------------------------+
| sigma_src                 | StringLi | expression for sigma as a     |
|                           | st       | function of a normalized      |
|                           |          | radial coordinate [????]      |
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
| qz_exp                    | StringLi | NIMP,MAX_NZIMP expressions    |
|                           | st       | for the explicit part of the  |
|                           |          | impurity heating as a         |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [W/m^3]     |
+---------------------------+----------+-------------------------------+
| qz_imp                    | StringLi | NIMP .LT. MAX_NZIMP           |
|                           | st       | expressions for the implicit  |
|                           |          | part of the impurity heating  |
|                           |          | as a function of a normalized |
|                           |          | radial coordinate [W/m^3/eV   |
|                           |          | ??]                           |
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
| sz_exp                    | StringLi | NIMP,MAX_NZIMP expressions    |
|                           | st       | for the explicit part of the  |
|                           |          | impurity particle source as a |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [/m^3/s]    |
+---------------------------+----------+-------------------------------+
| sz_imp                    | StringLi | NIMP,MAX_NZIMP expressions    |
|                           | st       | for the implicit part of the  |
|                           |          | impurity particle source as a |
|                           |          | function of a normalized      |
|                           |          | radial coordinate [/m^3/s.m^3 |
|                           |          | ??]                           |
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
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /coreimpur                | --Direct | BLOCK: specify parameters for |
|                           | ory--    | the coreimpur CPO             |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| coreimpur_ext             | string   | Reference CPO for coreimpur   |
|                           |          | in the form                   |
|                           |          | USER/DEVICE/VERSION/SHOT/RUN  |
|                           |          | or SHOT/RUN; not used if      |
|                           |          | blank                         |
+---------------------------+----------+-------------------------------+
| imp_zn                    | FloatLis | NIMP list of nuclear charges  |
|                           | t        | [units of proton charge]      |
+---------------------------+----------+-------------------------------+
| imp_amn                   | FloatLis | NIMP list of atomic masses    |
|                           | t        | [amu]                         |
+---------------------------+----------+-------------------------------+
| nz                        | StringLi | NIMP \* MAX_NZIMP expressions |
|                           | st       | giving the impurity ion       |
|                           |          | desities as a function of a   |
|                           |          | normalized radial coordinate  |
|                           |          | [/m^3]                        |
+---------------------------+----------+-------------------------------+
| diff                      | StringLi | NIMP \* MAX_NZIMP expressions |
|                           | st       | giving the impurity ion       |
|                           |          | particle diffusivities        |
|                           |          | [m^2/s]                       |
+---------------------------+----------+-------------------------------+
| conv                      | StringLi | NIMP \* MAX_NZIMP expressions |
|                           | st       | giving the impurity ion pinch |
|                           |          | velocities                    |
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

