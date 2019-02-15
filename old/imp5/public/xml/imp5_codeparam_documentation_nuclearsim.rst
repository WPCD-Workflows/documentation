.. _imp5_code_parameter_documentation_nuclearsim:

nuclearsim
==========

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:Code parameters for Nuclearsim (nuclear reaction rates for
thermal plasmas)

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /select_output_species    | --Direct |                               |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| source_from_neutrons      | boolean  | If true, then the source rate |
|                           |          | of fusion/fission produced    |
|                           |          | neutrons will be calculated   |
+---------------------------+----------+-------------------------------+
| source_from_H             | boolean  | If true, then the source rate |
|                           |          | of fusion/fission produced    |
|                           |          | protons will be calculated    |
+---------------------------+----------+-------------------------------+
| source_from_D             | boolean  | If true, then the source rate |
|                           |          | of fusion/fission produced    |
|                           |          | deutrons will be calculated   |
+---------------------------+----------+-------------------------------+
| source_from_T             | boolean  | If true, then the source rate |
|                           |          | of fusion/fission produced    |
|                           |          | tritons will be calculated    |
+---------------------------+----------+-------------------------------+
| source_from_He3           | boolean  | If true, then the source rate |
|                           |          | of fusion/fission produced    |
|                           |          | Helium-3 will be calculated   |
+---------------------------+----------+-------------------------------+
| source_from_He4           | boolean  | If true, then the source rate |
|                           |          | of fusion/fission produced    |
|                           |          | Helium-4 will be calculated   |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /output                   | --Direct | Defining the formatting of    |
|                           | ory--    | the output distsource CPO     |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /output/markers           | --Direct | Defining the formatting of    |
|                           | ory--    | the output distsource markers |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| n_toroidal                | integer  | Number of grid point in the   |
|                           |          | toroidal angle; used only if  |
|                           |          | Markers are initialised on a  |
|                           |          | grid.                         |
+---------------------------+----------+-------------------------------+
| n_angle1                  | integer  | Number of grid point in the   |
|                           |          | assimuthal angle of the       |
|                           |          | spherical velocity space      |
|                           |          | coordinate system (not field  |
|                           |          | aligned); used only if        |
|                           |          | Markers are initialised on a  |
|                           |          | grid.                         |
+---------------------------+----------+-------------------------------+
| n_angle2                  | integer  | Number of grid point in the   |
|                           |          | non-assimuthal angle of the   |
|                           |          | spherical velocity space      |
|                           |          | coordinate system (not field  |
|                           |          | aligned); used only if        |
|                           |          | Markers are initialised on a  |
|                           |          | grid.                         |
+---------------------------+----------+-------------------------------+
| n_skip_r                  | integer  | Define the R-grid from        |
|                           |          | equilibrium%profiles_2d%r(n_s |
|                           |          | kip_r:n_skip_r:end)           |
|                           |          | grid; used only if Markers    |
|                           |          | are initialised on a grid.    |
+---------------------------+----------+-------------------------------+
| n_skip_z                  | integer  | Define the z-grid from        |
|                           |          | equilibrium%profiles_2d%z(n_s |
|                           |          | kip_z:n_skip_z:end)           |
|                           |          | grid; used only if Markers    |
|                           |          | are initialised on a grid.    |
+---------------------------+----------+-------------------------------+
| initalisation_scheme      | initalis | 1: Initialise on a grid.      |
|                           | ation_sc |                               |
|                           | heme_dom |                               |
|                           | ain      |                               |
+---------------------------+----------+-------------------------------+
| verbosity                 | integer  | Specifies the verbosity of    |
|                           |          | the output to stdout and      |
|                           |          | stderr.                       |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| initalisation_scheme_doma | integer  | Min(<=): 1                    |
| in                        |          |                               |
+---------------------------+----------+-------------------------------+

2014-12-19 17:47:12Z tjohnson $
