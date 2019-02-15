.. _itm_enum_types__coordinate_identifier:

coordinate_identifier
=====================

::


   Translation table for coordinate_identifier_definitions.
   Implemented in: utilities.xsd, complexType::weighted_markers/variable_ids

   Used in:
   - distribution/distri_vec/dist_func/markers/variable_ids
   - distsource/source/markers/variable_ids

   \version "$Id: coordinate_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /distribution/distri_vec/dist_func/markers/variable_ids

::

   /distsource/source/markers/variable_ids

Fortran interface example:

::

    use coordinate_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | X                 | First cartesian coordinate in the         |
|     |                   | horizontal plane [m]                      |
+-----+-------------------+-------------------------------------------+
| 2   | Y                 | Second cartesian coordinate in the        |
|     |                   | horizontal plane (grad(X) x grad(Y) =     |
|     |                   | grad(Z)) [m]                              |
+-----+-------------------+-------------------------------------------+
| 4   | R                 | Major radius [m]                          |
+-----+-------------------+-------------------------------------------+
| 5   | Z                 | Vertical position Z [m]                   |
+-----+-------------------+-------------------------------------------+
| 6   | phi               | Toroidal angle [rad]                      |
+-----+-------------------+-------------------------------------------+
| 7   | psi               | Poloidal magnetic flux [T*m^2]            |
+-----+-------------------+-------------------------------------------+
| 8   | theta             | Geometrical poloidal angle                |
+-----+-------------------+-------------------------------------------+
| 107 | rho_tor           | The square root of the toroidal flux,     |
|     |                   | sqrt((Phi-Phi_axis)/pi/B0) [m]            |
+-----+-------------------+-------------------------------------------+
| 109 | theta_b           | Straight field line poloidal angle [rad]  |
+-----+-------------------+-------------------------------------------+
| 110 | vx                | Velocity component in the x-direction     |
|     |                   | [m/s]                                     |
+-----+-------------------+-------------------------------------------+
| 111 | vy                | Velocity component in the z-direction     |
|     |                   | [m/s]                                     |
+-----+-------------------+-------------------------------------------+
| 112 | vz                | Velocity component in the z-direction     |
|     |                   | [m/s]                                     |
+-----+-------------------+-------------------------------------------+
| 113 | vel               | Magnitude of the velocity [m/s]           |
+-----+-------------------+-------------------------------------------+
| 114 | vphi              | Velocity component in the toroidal        |
|     |                   | direction [m/s]                           |
+-----+-------------------+-------------------------------------------+
| 115 | vpar              | Velocity component parallel to the        |
|     |                   | magnetic field [m/s]                      |
+-----+-------------------+-------------------------------------------+
| 116 | vperp             | Velocity perpendicular to the magnetic    |
|     |                   | field [m/s]                               |
+-----+-------------------+-------------------------------------------+
| 117 | E                 | Hamiltonian energy [eV]                   |
+-----+-------------------+-------------------------------------------+
| 118 | pphi              | Canonical toroidal angular momentum [kg   |
|     |                   | m**2/s]                                   |
+-----+-------------------+-------------------------------------------+
| 119 | mu                | magnetic moment [J/T]                     |
+-----+-------------------+-------------------------------------------+
| 120 | Lambda            | mu/E [1/T]                                |
+-----+-------------------+-------------------------------------------+
| 121 | pitch             | vpar/v [1]                                |
+-----+-------------------+-------------------------------------------+
| 122 | vel_thermal       | Velocity normalised to the local thermal  |
|     |                   | velocity of the thermal ions (of the      |
|     |                   | relevant species)                         |
+-----+-------------------+-------------------------------------------+
| 123 | momentum          | Modulus of the relativistic momentum      |
|     |                   | vector                                    |
+-----+-------------------+-------------------------------------------+
| 124 | parallel_momentum | Component of the relativistic momentum    |
|     |                   | vector parallel to the magnetic field     |
+-----+-------------------+-------------------------------------------+
| 125 | perpendicular_mom | Component of the relativistic momentum    |
|     | entum             | vector perpendicular to the magnetic      |
|     |                   | field                                     |
+-----+-------------------+-------------------------------------------+
| 126 | xi_at_min_B       | Pitch, i.e. ratio between the parallel    |
|     |                   | over the perpendicular velocity, at the   |
|     |                   | minimum value of the magnetic field       |
|     |                   | strength along the guiding centre orbit   |
+-----+-------------------+-------------------------------------------+
