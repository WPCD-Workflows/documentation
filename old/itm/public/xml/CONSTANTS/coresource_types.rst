.. _itm_enum_types__coresource_types:

coresource_types
================

::


   Translation table for sources of particles, momentum and heat.
   Used in the cpo: coresource

   \version "$Id: coresource_types.xml 2154 2019-01-31 11:00:19Z g2dpc $"
   URL: https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_constants
       

This identifier is used in the following places in the EU-IM CPOs:

::

   /coresource/values/sourceid

Fortran interface example:

::

    use coresource_types, only: get_type_value, get_type_name, get_type_description

+-----+-------------------+-------------------------------------------+
| Fla | Id                | Description                               |
| g   |                   |                                           |
+=====+===================+===========================================+
| 0   | unspecified       | Unspecified source type                   |
+-----+-------------------+-------------------------------------------+
| 1   | nbi               | Source from Neutral Beam Injection        |
+-----+-------------------+-------------------------------------------+
| 2   | ec                | Sources from electron cyclotron heating   |
|     |                   | heating and current drive                 |
+-----+-------------------+-------------------------------------------+
| 3   | lh                | Sources from lower hybrid heating and     |
|     |                   | current drive                             |
+-----+-------------------+-------------------------------------------+
| 4   | ic                | Sources from heating at the ion cyclotron |
|     |                   | range of frequencies                      |
+-----+-------------------+-------------------------------------------+
| 5   | fusion            | Sources from fusion reactions, e.g. alpha |
|     |                   | particle heating                          |
+-----+-------------------+-------------------------------------------+
| 6   | pellet            | Sources from injection                    |
+-----+-------------------+-------------------------------------------+
| 7   | ic_nbi            | A combination of the ic and nbi sources   |
+-----+-------------------+-------------------------------------------+
| 8   | ic_fusion         | A combination of the ic and fusion        |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 9   | ic_nbi_fusion     | A combination of the ic and fusion        |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 10  | ec_lh             | A combination of the ec and lh sources    |
+-----+-------------------+-------------------------------------------+
| 11  | ec_ic             | A combination of the ec and ic sources    |
+-----+-------------------+-------------------------------------------+
| 12  | lh_ic             | A combination of the lh and ic sources    |
+-----+-------------------+-------------------------------------------+
| 13  | ec_lh_ic          | A combination of the ec, lh and ic        |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 14  | ohmic             | Source from ohmic heating                 |
+-----+-------------------+-------------------------------------------+
| 15  | brehmstrahlung    | Source from bremstrahlung                 |
+-----+-------------------+-------------------------------------------+
| 16  | cyclotronradiatio | Source from cyclotron radiation           |
|     | n                 |                                           |
+-----+-------------------+-------------------------------------------+
| 17  | syncrotronradiati | Source from syncrotron radiation          |
|     | on                |                                           |
+-----+-------------------+-------------------------------------------+
| 18  | cyclotron_syncrot | Source from syncrotron radiation          |
|     | ronradiation      |                                           |
+-----+-------------------+-------------------------------------------+
| 19  | lineradiation     | Source from line radiation                |
+-----+-------------------+-------------------------------------------+
| 20  | equipartition     | Collisional equipartition                 |
+-----+-------------------+-------------------------------------------+
| 21  | gaspuff           | Gas puff                                  |
+-----+-------------------+-------------------------------------------+
| 22  | killergaspuff     | Killer gas puff                           |
+-----+-------------------+-------------------------------------------+
| 23  | ionizationlosses  | Losses due to ionization                  |
+-----+-------------------+-------------------------------------------+
| 24  | coldneutralcoolin | Cold neutrals from the edge that enters   |
|     | g                 | the plasma                                |
+-----+-------------------+-------------------------------------------+
| 25  | particles2wall    | Particle pumping by the wall              |
+-----+-------------------+-------------------------------------------+
| 26  | particles2pump    | Particle pumping by external pumps        |
+-----+-------------------+-------------------------------------------+
| 27  | database          | Source from database entry                |
+-----+-------------------+-------------------------------------------+
| 28  | background        | Background source                         |
+-----+-------------------+-------------------------------------------+
| 29  | impurity          | Impurity source                           |
+-----+-------------------+-------------------------------------------+
| 30  | combined          | Combined source                           |
+-----+-------------------+-------------------------------------------+
| 31  | not_provided      | No data provided                          |
+-----+-------------------+-------------------------------------------+
| 32  | neoclassical      | Neoclassical                              |
+-----+-------------------+-------------------------------------------+
| 33  | gaussian          | Gaussian                                  |
+-----+-------------------+-------------------------------------------+
| 34  | runaways          | Source run-away processes; includes both  |
|     |                   | electron and ion run-away                 |
+-----+-------------------+-------------------------------------------+
| 100 | unspecified_DERIV | Derived from another source; duplicating  |
| 0   | ED                | data. Unspecified source type             |
+-----+-------------------+-------------------------------------------+
| 100 | nbi_DERIVED       | Derived from another source; duplicating  |
| 1   |                   | data. Source from Neutral Beam Injection  |
+-----+-------------------+-------------------------------------------+
| 100 | ec_DERIVED        | Derived from another source; duplicating  |
| 2   |                   | data. Sources from electron cyclotron     |
|     |                   | heating heating and current drive         |
+-----+-------------------+-------------------------------------------+
| 100 | lh_DERIVED        | Derived from another source; duplicating  |
| 3   |                   | data. Sources from lower hybrid heating   |
|     |                   | and current drive                         |
+-----+-------------------+-------------------------------------------+
| 100 | ic_DERIVED        | Derived from another source; duplicating  |
| 4   |                   | data. Sources from heating at the ion     |
|     |                   | cyclotron range of frequencies            |
+-----+-------------------+-------------------------------------------+
| 100 | fusion_DERIVED    | Derived from another source; duplicating  |
| 5   |                   | data. Sources from fusion reactions, e.g. |
|     |                   | alpha particle heating                    |
+-----+-------------------+-------------------------------------------+
| 100 | pellet_DERIVED    | Derived from another source; duplicating  |
| 6   |                   | data. Sources from injection              |
+-----+-------------------+-------------------------------------------+
| 100 | ic_nbi_DERIVED    | Derived from another source; duplicating  |
| 7   |                   | data. A combination of the ic and nbi     |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 100 | ic_fusion_DERIVED | Derived from another source; duplicating  |
| 8   |                   | data. A combination of the ic and fusion  |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 100 | ic_nbi_fusion_DER | Derived from another source; duplicating  |
| 9   | IVED              | data. A combination of the ic and fusion  |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 101 | ec_lh_DERIVED     | Derived from another source; duplicating  |
| 0   |                   | data. A combination of the ec and lh      |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 101 | ec_ic_DERIVED     | Derived from another source; duplicating  |
| 1   |                   | data. A combination of the ec and ic      |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 101 | lh_ic_DERIVED     | Derived from another source; duplicating  |
| 2   |                   | data. A combination of the lh and ic      |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 101 | ec_lh_ic_DERIVED  | Derived from another source; duplicating  |
| 3   |                   | data. A combination of the ec, lh and ic  |
|     |                   | sources                                   |
+-----+-------------------+-------------------------------------------+
| 101 | ohmic_DERIVED     | Derived from another source; duplicating  |
| 4   |                   | data. Source from ohmic heating           |
+-----+-------------------+-------------------------------------------+
| 101 | brehmstrahlung_DE | Derived from another source; duplicating  |
| 5   | RIVED             | data. Source from bremstrahlung           |
+-----+-------------------+-------------------------------------------+
| 101 | cyclotronradiatio | Derived from another source; duplicating  |
| 6   | n_DERIVED         | data. Source from cyclotron radiation     |
+-----+-------------------+-------------------------------------------+
| 101 | syncrotronradiati | Derived from another source; duplicating  |
| 7   | on_DERIVED        | data. Source from syncrotron radiation    |
+-----+-------------------+-------------------------------------------+
| 101 | cyclotron_syncrot | Derived from another source; duplicating  |
| 8   | ronradiation_DERI | data. Source from syncrotron radiation    |
|     | VED               |                                           |
+-----+-------------------+-------------------------------------------+
| 101 | lineradiation_DER | Derived from another source; duplicating  |
| 9   | IVED              | data. Source from line radiation          |
+-----+-------------------+-------------------------------------------+
| 102 | equipartition_DER | Derived from another source; duplicating  |
| 0   | IVED              | data. Collisional equipartition           |
+-----+-------------------+-------------------------------------------+
| 102 | gaspuff_DERIVED   | Derived from another source; duplicating  |
| 1   |                   | data. Gas puff                            |
+-----+-------------------+-------------------------------------------+
| 102 | killergaspuff_DER | Derived from another source; duplicating  |
| 2   | IVED              | data. Killer gas puff                     |
+-----+-------------------+-------------------------------------------+
| 102 | ionizationlosses_ | Derived from another source; duplicating  |
| 3   | DERIVED           | data. Losses due to ionization            |
+-----+-------------------+-------------------------------------------+
| 102 | coldneutralcoolin | Derived from another source; duplicating  |
| 4   | g_DERIVED         | data. Cold neutrals from the edge that    |
|     |                   | enters the plasma                         |
+-----+-------------------+-------------------------------------------+
| 102 | particles2wall_DE | Derived from another source; duplicating  |
| 5   | RIVED             | data. Particle pumping by the wall        |
+-----+-------------------+-------------------------------------------+
| 102 | particles2pump_DE | Derived from another source; duplicating  |
| 6   | RIVED             | data. Particle pumping by external pumps  |
+-----+-------------------+-------------------------------------------+
| 102 | database_DERIVED  | Derived from another source; duplicating  |
| 7   |                   | data. Source from database entry          |
+-----+-------------------+-------------------------------------------+
| 102 | background_DERIVE | Derived from another source; duplicating  |
| 8   | D                 | data. Background source                   |
+-----+-------------------+-------------------------------------------+
| 102 | impurity_DERIVED  | Derived from another source; duplicating  |
| 9   |                   | data. Impurity source                     |
+-----+-------------------+-------------------------------------------+
| 103 | combined_DERIVED  | Derived from another source; duplicating  |
| 0   |                   | data. Combined source                     |
+-----+-------------------+-------------------------------------------+
| 103 | not_provided_DERI | Derived from another source; duplicating  |
| 1   | VED               | data. No data provided                    |
+-----+-------------------+-------------------------------------------+
| 103 | neoclassical_DERI | Derived from another source; duplicating  |
| 2   | VED               | data. Neoclassical                        |
+-----+-------------------+-------------------------------------------+
| 103 | gaussian_DERIVED  | Derived from another source; duplicating  |
| 3   |                   | data. Gaussian                            |
+-----+-------------------+-------------------------------------------+
