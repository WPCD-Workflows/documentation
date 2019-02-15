.. _itm_enum_types__coretransp_identifier:

coretransp_identifier
=====================

::


     Translation table for different types of transport coefficients.

     \version "$Id: coretransp_identifier.xml 2153 2019-01-31 09:23:43Z g2dpc $"
     URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   coretransp%values(:)%transportid

Fortran interface example:

::

    use coretransp_identifier, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | Unspecified transport type                |
+-----+-------------------+-------------------------------------------+
| 1   | modtransp         | Derived from MODTRANSP                    |
+-----+-------------------+-------------------------------------------+
| 2   | neoclassical      | Neoclassical                              |
+-----+-------------------+-------------------------------------------+
| 3   | turbulence_fluxtu | Turbulence / fluxtube code                |
|     | be                |                                           |
+-----+-------------------+-------------------------------------------+
| 4   | turbulence_global | Turbulence / global code                  |
+-----+-------------------+-------------------------------------------+
| 5   | elm_continuous    | Continuous ELM model --- gives the ELM    |
|     |                   | averaged profile                          |
+-----+-------------------+-------------------------------------------+
| 6   | elm_resolved      | Time resolved ELM model                   |
+-----+-------------------+-------------------------------------------+
| 7   | ntm               | Transport arising from the presence of    |
|     |                   | NTMs                                      |
+-----+-------------------+-------------------------------------------+
| 8   | sawteeth          | Transport arising from the presence of    |
|     |                   | sawteeth                                  |
+-----+-------------------+-------------------------------------------+
| 9   | pedestal          | Transport level to give edge pedestal     |
+-----+-------------------+-------------------------------------------+
| 10  | database          | Transport specified by a database entry   |
+-----+-------------------+-------------------------------------------+
| 11  | background        | Background transport level                |
+-----+-------------------+-------------------------------------------+
| 12  | combined          | Derived from a number of contributions    |
+-----+-------------------+-------------------------------------------+
| 13  | not_provided      | No data provided                          |
+-----+-------------------+-------------------------------------------+
| 100 | unspecified_DERIV | Derived from another source; duplicating  |
| 0   | ED                | data. Unspecified transport type          |
+-----+-------------------+-------------------------------------------+
| 100 | modtransp_DERIVED | Derived from another source; duplicating  |
| 1   |                   | data. Derived from MODTRANSP              |
+-----+-------------------+-------------------------------------------+
| 100 | neoclassical_DERI | Derived from another source; duplicating  |
| 2   | VED               | data. Neoclassical                        |
+-----+-------------------+-------------------------------------------+
| 100 | turbulence_fluxtu | Derived from another source; duplicating  |
| 3   | be_DERIVED        | data. Turbulence / fluxtube code          |
+-----+-------------------+-------------------------------------------+
| 100 | turbulence_global | Derived from another source; duplicating  |
| 4   | _DERIVED          | data. Turbulence / global code            |
+-----+-------------------+-------------------------------------------+
| 100 | elm_continuous_DE | Derived from another source; duplicating  |
| 5   | RIVED             | data. Continuous ELM model --- gives the  |
|     |                   | ELM averaged profile                      |
+-----+-------------------+-------------------------------------------+
| 100 | elm_resolved_DERI | Derived from another source; duplicating  |
| 6   | VED               | data. Time resolved ELM model             |
+-----+-------------------+-------------------------------------------+
| 100 | ntm_DERIVED       | Derived from another source; duplicating  |
| 7   |                   | data. Transport arising from the presence |
|     |                   | of NTMs                                   |
+-----+-------------------+-------------------------------------------+
| 100 | sawteeth_DERIVED  | Derived from another source; duplicating  |
| 8   |                   | data. Transport arising from the presence |
|     |                   | of sawteeth                               |
+-----+-------------------+-------------------------------------------+
| 100 | pedestal_DERIVED  | Derived from another source; duplicating  |
| 9   |                   | data. Transport level to give edge        |
|     |                   | pedestal                                  |
+-----+-------------------+-------------------------------------------+
| 101 | database_DERIVED  | Derived from another source; duplicating  |
| 0   |                   | data. Transport specified by a database   |
|     |                   | entry                                     |
+-----+-------------------+-------------------------------------------+
| 101 | background_DERIVE | Derived from another source; duplicating  |
| 1   | D                 | data. Background transport level          |
+-----+-------------------+-------------------------------------------+
| 101 | combined_DERIVED  | Derived from another source; duplicating  |
| 2   |                   | data. Derived from a number of            |
|     |                   | contributions                             |
+-----+-------------------+-------------------------------------------+
| 101 | not_provided_DERI | Derived from another source; duplicating  |
| 3   | VED               | data. No data provided                    |
+-----+-------------------+-------------------------------------------+
