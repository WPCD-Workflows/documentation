.. _itm_enum_types__coreneutral_types:

coreneutral_types
=================

::


   Translation table for neutral types, in terms of energy.
   Used in the cpo: 
     compositionc%compositions%neutralscomp(:)%type(:)
     coredelta%compositions%neutralscomp(:)%type(:)
     coreimpur%compositions%neutralscomp(:)%type(:)
     coreneutrals%compositions%neutralscomp(:)%type(:)
     coreneutrals%neutcompo%neutral(:)%type(:)
     coreprof%compositions%neutralscomp(:)%type(:)
     coresource%compositions%neutralscomp(:)%type(:)
     coretransp%compositions%neutralscomp(:)%type(:)
     distribution%compositions%neutralscomp(:)%type(:)
     distsource%compositions%neutralscomp(:)%type(:)
     edge%compositions%neutralscomp(:)%type(:)
     neoclassic%compositions%neutralscomp(:)%type(:)
     waves%coherentwave(:)%compositions%neutralscomp(:)%type(:)

   \version "$Id: coreneutral_types.xml 2154 2019-01-31 11:00:19Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

Fortran interface example:

::

    use coreneutral_types, only: get_type_value, get_type_name, get_type_description

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
