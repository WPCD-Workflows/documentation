.. _itm_enum_types__species_reference_identifier:

species_reference_identifier
============================

::


   Translation table for species_reference_identifier_definition.
   Implemented in:
   - utilities.xsd: complexType species_reference

   \version "$Id: species_reference_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /distribution/distri_vec/species/type

::

   /distsource/source/species/type

Fortran interface example:

::

    use species_reference_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | electron          | Electron                                  |
+-----+-------------------+-------------------------------------------+
| 2   | ion               | Ion from compositions/ions                |
+-----+-------------------+-------------------------------------------+
| 3   | impurity          | Impurity from compositions/impur          |
+-----+-------------------+-------------------------------------------+
| 4   | neutron           | Neutron                                   |
+-----+-------------------+-------------------------------------------+
| 5   | photon            | Photon                                    |
+-----+-------------------+-------------------------------------------+
| 6   | neutral           | Neutral particle, e.g. atom or molecule   |
|     |                   | from charge exchange reactions            |
+-----+-------------------+-------------------------------------------+
