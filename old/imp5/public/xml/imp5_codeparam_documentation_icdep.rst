.. _imp5_code_parameter_documentation_icdep:

icdep
=====

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:ICRF wave absorption parameters for the waves-cpo generating
code icdep

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /absorption_geometry      | --Direct | Geometric parameters          |
|                           | ory--    | describing the absorption     |
|                           |          | profiles                      |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| width_rho                 | float    | Width of the absorption in    |
|                           |          | rho_tor_norm                  |
+---------------------------+----------+-------------------------------+
| width_r                   | float    | Width of the absorption in R  |
|                           |          | [m]                           |
+---------------------------+----------+-------------------------------+
| width_z                   | float    | Width of the absorption in Z  |
|                           |          | [m]                           |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /power_partition          | --Direct | Partition of the launched     |
|                           | ory--    | power absorbed on the         |
|                           |          | different species             |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| fract_eld_ttmp            | float    | Fraction of the power         |
|                           |          | absorbed through Electron     |
|                           |          | Landau Damping and Transit    |
|                           |          | Time Magnetic Pumping         |
+---------------------------+----------+-------------------------------+
| fract_coll2electrons      | float    | Fraction of the fast ion      |
|                           |          | absorbed power that is        |
|                           |          | transferred to the electrons  |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /wave_quantities          | --Direct | Properties of the wave field  |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| n_phi                     | integer  | Toroidal mode number          |
+---------------------------+----------+-------------------------------+
| k_theta                   | float    | Wave vector component in the  |
|                           |          | poloidal (theta) direction    |
|                           |          | [1/m]                         |
+---------------------------+----------+-------------------------------+
| k_rho                     | float    | Wave vector component in the  |
|                           |          | radial (rho) direction [1/m]  |
+---------------------------+----------+-------------------------------+
| ratio_Eplus_Eminus        | float    | Ratio of the magnitude        |
|                           |          | between E_plus and E_minus,   |
|                           |          | i.e. the left and right hand  |
|                           |          | polarised components          |
+---------------------------+----------+-------------------------------+
| phase_Eplus_Eminus        | float    | Complex phase difference      |
|                           |          | between E_plus and E_minus =  |
|                           |          | log( E_plus / E_minus ) [rad] |
+---------------------------+----------+-------------------------------+

21:32:42Z tjohnson $
