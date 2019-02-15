.. _itm_enum_types__wall_identifier:

wall_identifier
===============

::


   Translation table for wall_identifier_defintions.

   Used in:
   - wall cpo

   \version "$Id: wall_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /wall/wall2d/wall_id

::

   /wall/wall3d/wall_id

Fortran interface example:

::

    use wall_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | equilibrium       | Equilibrium wall                          |
+-----+-------------------+-------------------------------------------+
| 2   | gas_tight         | Gas tight wall                            |
+-----+-------------------+-------------------------------------------+
| 3   | FBE               | Free boundary equilibrium wall            |
+-----+-------------------+-------------------------------------------+
| 4   | RWM               | 3D RWM wall (with holes)                  |
+-----+-------------------+-------------------------------------------+
