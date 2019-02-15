.. _itm_enum_types__fast_thermal_filter_identifier:

fast_thermal_filter_identifier
==============================

::


   Translation table for fast_thermal_separation_filter_identifier_definition.
   Implemented in: utilities.xsd, complexType::fast_thermal_separation_filter/method

   \version "$Id: fast_thermal_filter_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /corefast/values/filter/method

::

   /distribution/distri_vec/fast_filter/method

Fortran interface example:

::

    use fast_thermal_filter_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | unspecified                               |
+-----+-------------------+-------------------------------------------+
| 1   | EnergyCutOff      | The fast-thermal separation is performed  |
|     |                   | at an given value of particle kinetic     |
|     |                   | energy.                                   |
+-----+-------------------+-------------------------------------------+
| 2   | EnergyTiCutOff    | The fast-thermal separation is performed  |
|     |                   | at an given ratio between the particle    |
|     |                   | kinetic energy and the local thermal ion  |
|     |                   | energy.                                   |
+-----+-------------------+-------------------------------------------+
| 3   | EnergyTeCutOff    | The fast-thermal separation is performed  |
|     |                   | at an given ratio between the particle    |
|     |                   | kinetic energy and the local thermal      |
|     |                   | electron energy.                          |
+-----+-------------------+-------------------------------------------+
| 4   | delta_f           | The fast particle population is the       |
|     |                   | different between the full population and |
|     |                   | a thermal Maxwellian.                     |
+-----+-------------------+-------------------------------------------+
