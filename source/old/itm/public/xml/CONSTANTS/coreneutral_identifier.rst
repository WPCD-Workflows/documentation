.. _itm_enum_types__coreneutral_identifier:

coreneutral_identifier
======================

::


     Translation table for identifying different types of neutral.
     The neutrals are characterised by their energy and source of the neutrals.

     \version "$Id: coreneutral_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
     URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /coredelta/compositions/neutralscomp/type

::

   /coreimpur/compositions/neutralscomp/type

::

   /coreneutrals/compositions/neutralscomp/type

::

   /coreneutrals/neutcompo/neutral/type

::

   /coreprof/compositions/neutralscomp/type

::

   /coresource/compositions/neutralscomp/type

::

   /coretransp/compositions/neutralscomp/type

::

   /distribution/compositions/neutralscomp/type

::

   /distsource/compositions/neutralscomp/type

::

   /edge/compositions/neutralscomp/type

::

   /neoclassic/compositions/neutralscomp/type

::

   /waves/coherentwave/compositions/neutralscomp/type

Fortran interface example:

::

    use coreneutral_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | cold              | Cold neutrals                             |
+-----+-------------------+-------------------------------------------+
| 1   | thermal           | Thermal neutrals                          |
+-----+-------------------+-------------------------------------------+
| 2   | fast              | Fast neutrals                             |
+-----+-------------------+-------------------------------------------+
| 3   | nbi               | NBI neutrals                              |
+-----+-------------------+-------------------------------------------+
