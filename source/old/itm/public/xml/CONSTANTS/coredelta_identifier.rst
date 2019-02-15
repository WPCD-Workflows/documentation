.. _itm_enum_types__coredelta_identifier:

coredelta_identifier
====================

::


   Translation table for coredelta
   Used in the cpo: 
     coredelta%values(:)%deltaid

   \version "$Id: coredelta_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /coredelta/values/deltaid

Fortran interface example:

::

    use coredelta_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | Unspecified coredelta                     |
+-----+-------------------+-------------------------------------------+
| 1   | pellet            | Coredelta from a pellet                   |
+-----+-------------------+-------------------------------------------+
| 2   | sawtooth          | Coredelta from a sawtooth                 |
+-----+-------------------+-------------------------------------------+
| 3   | elm               | Coredelta from an ELM                     |
+-----+-------------------+-------------------------------------------+
| 4   | combined          | Combined coredelta from multiple types of |
|     |                   | events                                    |
+-----+-------------------+-------------------------------------------+
| 5   | not_provided      | No data provided                          |
+-----+-------------------+-------------------------------------------+
| 100 | derived           | Derived from another source; duplicating  |
| 0   |                   | data                                      |
+-----+-------------------+-------------------------------------------+
