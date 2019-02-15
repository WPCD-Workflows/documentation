.. _imp5_code_parameter_documentation_codeparam2nbi:

codeparam2nbi
=============

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Namespace:
https://gforge6.eufus.eu/svn/imp5tool/trunk/cpogenerators/codeparam2nbi

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /injector_setting         | --Direct |                               |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| mass                      | float    | Mass of injected species      |
+---------------------------+----------+-------------------------------+
| charge                    | float    | Charge of injected species    |
+---------------------------+----------+-------------------------------+
| power                     | float    | Injected power [W]            |
+---------------------------+----------+-------------------------------+
| power_fraction_2          | FloatLis | Fraction of power of second   |
|                           | t        | harmonic energy injection     |
+---------------------------+----------+-------------------------------+
| power_fraction_3          | FloatLis | Fraction of power of third    |
|                           | t        | harmonic energy injection     |
+---------------------------+----------+-------------------------------+
| energy                    | float    | Nominal ijection energy [eV]  |
+---------------------------+----------+-------------------------------+
| select_preset_geometry    | int4geom | Select geoemtry source; 1:    |
|                           | etrySele | ITER, 2: JET, 0: manual       |
|                           | ction    | geometry input from xml       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /injector_geometry        | --Direct |                               |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| r_inj_surface             | FloatLis | Major radius at the centre of |
|                           | t        | the injection surface [m]     |
+---------------------------+----------+-------------------------------+
| z_inj_surface             | FloatLis | Vertical coordinate at the    |
|                           | t        | centre of the injection       |
|                           |          | surface [m]                   |
+---------------------------+----------+-------------------------------+
| phi_inj_surface           | FloatLis | Toroidal angle at the centre  |
|                           | t        | of the injection surface      |
|                           |          | [rad]                         |
+---------------------------+----------+-------------------------------+
| tang_rad                  | FloatLis | Tangency radius (major radius |
|                           | t        | where the central line of a   |
|                           |          | NBI unit is tangent to a      |
|                           |          | circle around the symmetry    |
|                           |          | axis)                         |
+---------------------------+----------+-------------------------------+
| angle                     | FloatLis | Angle of inclination between  |
|                           | t        | a line at the centre of the   |
|                           |          | injection unit surface and    |
|                           |          | the horiontal plane           |
+---------------------------+----------+-------------------------------+
| direction                 | integer  | Direction of the beam seen    |
|                           |          | from above the torus: -1 =    |
|                           |          | clockwise; 1 = counter        |
|                           |          | clockwise                     |
+---------------------------+----------+-------------------------------+
| div_vert                  | FloatLis | Beam divergence for a unit in |
|                           | t        | the vertical direction [rad]  |
+---------------------------+----------+-------------------------------+
| div_horiz                 | FloatLis | Beam divergence for a unit in |
|                           | t        | the horizontal direction      |
|                           |          | [rad]                         |
+---------------------------+----------+-------------------------------+
| focal_len_hz              | FloatLis | Horizontal focal length along |
|                           | t        | the beam line [m]             |
+---------------------------+----------+-------------------------------+
| n_beamlet                 | integer  | Number of beamlets            |
+---------------------------+----------+-------------------------------+
| r_beamlet                 | FloatLis | Major radius coordinate at    |
|                           | t        | the beamlet centre [m]        |
+---------------------------+----------+-------------------------------+
| z_beamlet                 | FloatLis | Vertical coordinate at the    |
|                           | t        | beamlet centre [m]            |
+---------------------------+----------+-------------------------------+
| phi_beamlet               | FloatLis | Toroidal coordinate at the    |
|                           | t        | beamlet centre [rad]          |
+---------------------------+----------+-------------------------------+
| tangent_radius_beamlet    | FloatLis | Tangency radius of the        |
|                           | t        | beamlet [m]                   |
+---------------------------+----------+-------------------------------+
| angle_beamlet             | FloatLis | Angle of inclination between  |
|                           | t        | the beamlet and the horiontal |
|                           |          | plane [rad]                   |
+---------------------------+----------+-------------------------------+
| power_fraction_beamlet    | FloatLis | Power fraction beamlet        |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+
| int4geometrySelection     | integer  | Min(<=): 0                    |
+---------------------------+----------+-------------------------------+

2019-01-31 11:00:19Z g2dpc $
