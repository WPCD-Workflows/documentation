.. _itm_enum_types__wave_identifier:

wave_identifier
===============

::


   Translation table for wave field types.
   Used in:
   - distribution()/distri_vec()/waves_id/id
   - waves()/coherentwave()/waves_id/id

   \version "$Id: wave_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /waves/coherentwave/wave_id

::

   /distribution/distri_vec/wave_id

Fortran interface example:

::

    use wave_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | EC                | Wave field for electron cyclotron heating |
|     |                   | and current drive                         |
+-----+-------------------+-------------------------------------------+
| 2   | LH                | Wave field for lower hybrid heating and   |
|     |                   | current drive                             |
+-----+-------------------+-------------------------------------------+
| 3   | IC                | Wave field for ion cyclotron frequency    |
|     |                   | heating and current drive                 |
+-----+-------------------+-------------------------------------------+
