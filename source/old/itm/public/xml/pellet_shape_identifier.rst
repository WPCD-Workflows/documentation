.. _itm_enum_types__pellet_shape_identifier:

pellet_shape_identifier
=======================

::


   Translation table for pellet_shape_identifier_definition.
   Used in:
   - pellet/

   \version "$Id: pellet_shape_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /pellet/shape/type

Fortran interface example:

::

    use pellet_shape_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | rectangular       | Rectangular pellet. Here dimensions(1) is |
|     |                   | the height [m], dimensions(2) is the      |
|     |                   | width [m] and dimensions(3) is the length |
|     |                   | [m] of the rectangle.                     |
+-----+-------------------+-------------------------------------------+
| 2   | cylindrical       | Cylindrical pellet Here dimensions(1) is  |
|     |                   | the radius [m] and dimensions(2) is the   |
|     |                   | height [m] of the cylinder.               |
+-----+-------------------+-------------------------------------------+
| 3   | spherical         | Spherical pellet. Here dimensions(1) is   |
|     |                   | the radius [m] of the sphere.             |
+-----+-------------------+-------------------------------------------+
