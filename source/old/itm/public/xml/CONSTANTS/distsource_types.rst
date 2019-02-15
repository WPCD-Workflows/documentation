.. _itm_enum_types__distsource_types:

distsource_types
================

::


   Translation table for Heating and Current Drive (HCD) distsource types, i.e. types particles source in Fokker-Planck equation (from NBI and nuclear reactions).

   Used in:
   - distribution()/distri_vec()/source_id/id
   - distsource()/source()/source_id/id

   \version "$Id: distsource_types.xml 2154 2019-01-31 11:00:19Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /distsource/source/source_id

::

   /distribution/distri_vec/source_id

Fortran interface example:

::

    use distsource_types, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | NBI               | Source from neutral beam injection        |
+-----+-------------------+-------------------------------------------+
| 2   | nuclear           | Source from nuclear reaction (reaction    |
|     |                   | type unspecified)                         |
+-----+-------------------+-------------------------------------------+
| 3   | DT_N4He           | Source from nuclear reaction: T(d,n)4He   |
|     |                   | [D+T->He4+n]                              |
+-----+-------------------+-------------------------------------------+
| 4   | D3He_P4He         | Source from nuclear reaction: He3(d,p)4He |
|     |                   | [He3+D->He4+p]                            |
+-----+-------------------+-------------------------------------------+
| 5   | DD_PT             | Source from nuclear reaction: D(d,p)T     |
|     |                   | [D+D->T+p]                                |
+-----+-------------------+-------------------------------------------+
| 6   | DD_N3He           | Source from nuclear reaction: D(d,n)3He   |
|     |                   | [D+D->He3+n]                              |
+-----+-------------------+-------------------------------------------+
| 7   | runaway           | Source from runaway processes             |
+-----+-------------------+-------------------------------------------+
