.. _itm_enum_types__fokker_planck_source_identifier:

fokker_planck_source_identifier
===============================

::


   Translation table for fokker_planck_source_identifier.
   Implemented in: distribution.xsd, complexType::dist_sources_reference/type

   Note that the type definitions are not necessarily disjoints sets.
   For example wall-firstorbit and wall-coulomb are both subsets of wall.
   When describing a wall loss one should always aim to use the most detailed
   type available. While when finding all wall losses one has to sum over all
   three types: wall, wall-firstorbit and wall-coulomb.

   \version "$Id: fokker_planck_source_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /distribution/distri_vec/global_param/sources/source_ref/type

::

   /distribution/distri_vec/profiles_1d/sources/source_ref/type

Fortran interface example:

::

    use fokker_planck_source_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | wave              | Source/sink from a waves CPO              |
+-----+-------------------+-------------------------------------------+
| 2   | distsource        | Source/sink from a distsource CPO         |
+-----+-------------------+-------------------------------------------+
| 3   | wave_and_source   | Source/sink from both the waves and the   |
|     |                   | distsource CPOs                           |
+-----+-------------------+-------------------------------------------+
| 4   | thermal           | Artificial source/sink used to represent  |
|     |                   | transport processes                       |
+-----+-------------------+-------------------------------------------+
| 5   | wall              | Source/sink from the wall                 |
+-----+-------------------+-------------------------------------------+
| 6   | wall_firstorbit   | Collisionless wall losses during first    |
|     |                   | orbit from birth                          |
+-----+-------------------+-------------------------------------------+
| 7   | wall_coulomb      | Wall losses caused by Coloumb collisions  |
+-----+-------------------+-------------------------------------------+
| 8   | atomic            | Source/sink due to atomic processes, e.g. |
|     |                   | CX reactions                              |
+-----+-------------------+-------------------------------------------+
| 9   | nuclear           | Source/sink due to nuclear reactions      |
+-----+-------------------+-------------------------------------------+
