.. _itm_enum_types__cocos_types:

cocos_types
===========

::


   Translation table for coordinate conventions for toroidal geometry, COCOS.

   For a detailed description about the COCOS see [O. Sauter and S. Yu. Medvedev, Computer Physics Communications 184 (2013) 293–302].

   \version "$Id: cocos_types.xml 2154 2019-01-31 11:00:19Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

Fortran interface example:

::

    use cocos_types, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 1   | COCOS_1           | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,theta,phi); Bp = + 1/2pi grad(phi) x |
|     |                   | grad(psi) Used in e.g. psitbx, Toray-GA   |
+-----+-------------------+-------------------------------------------+
| 2   | COCOS_2           | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,theta,phi); Bp = + 1/2pi grad(phi) x |
|     |                   | grad(psi) Used by e.g. Chease, ONETWO,    |
|     |                   | Hinton-Hazeltine, LION, XTOR, MEUDAS,     |
|     |                   | MARS, MARS-F                              |
+-----+-------------------+-------------------------------------------+
| 3   | COCOS_3           | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,phi,theta); Bp = - 1/2pi grad(phi) x |
|     |                   | grad(psi) Used by e.g. Freiberg, CAXE,    |
|     |                   | KINX, GRAY, CQL3D, CarMa, EFIT, ORB5,     |
|     |                   | GBS, GT5D                                 |
+-----+-------------------+-------------------------------------------+
| 4   | COCOS_4           | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,phi,theta); Bp = - 1/2pi grad(phi) x |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
| 5   | COCOS_5           | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,phi,theta); Bp = + 1/2pi grad(phi) x |
|     |                   | grad(psi) Used by e.g. TORBEAM, GENRAY    |
+-----+-------------------+-------------------------------------------+
| 6   | COCOS_6           | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,phi,theta); Bp = + 1/2pi grad(phi) x |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
| 7   | COCOS_7           | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,theta,phi); Bp = - 1/2pi grad(phi) x |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
| 8   | COCOS_8           | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,theta,phi); Bp = - 1/2pi grad(phi) x |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
| 11  | COCOS_11          | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,theta,phi); Bp = + grad(phi) x       |
|     |                   | grad(psi). Used by e.g. ITER, Boozer      |
+-----+-------------------+-------------------------------------------+
| 12  | COCOS_12          | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,theta,phi); Bp = + grad(phi) x       |
|     |                   | grad(psi) Used by e.g. GENE               |
+-----+-------------------+-------------------------------------------+
| 13  | COCOS_13          | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,phi,theta); Bp = - grad(phi) x       |
|     |                   | grad(psi). Used by e.g. CLISTE, EQUAL,    |
|     |                   | GEC, HELENA, EFDA-EU-IM                     |
+-----+-------------------+-------------------------------------------+
| 14  | COCOS_14          | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,phi,theta); Bp = - grad(phi) x       |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
| 15  | COCOS_15          | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,phi,theta); Bp = + grad(phi) x       |
|     |                   | grad(psi) Used by e.g. TORBEAM, GENRAY    |
+-----+-------------------+-------------------------------------------+
| 16  | COCOS_16          | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,phi,theta); Bp = + grad(phi) x       |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
| 17  | COCOS_17          | Coordinate specifications: (R,phi,Z) ;    |
|     |                   | (rho,theta,phi); Bp = - grad(phi) x       |
|     |                   | grad(psi). Used by e.g. LIUQE, psitbx     |
+-----+-------------------+-------------------------------------------+
| 18  | COCOS_18          | Coordinate specifications: (R,Z,phi) ;    |
|     |                   | (rho,theta,phi); Bp = - grad(phi) x       |
|     |                   | grad(psi)                                 |
+-----+-------------------+-------------------------------------------+
