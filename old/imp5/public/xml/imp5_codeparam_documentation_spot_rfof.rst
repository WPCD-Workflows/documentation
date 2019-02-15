.. _imp5_code_parameter_documentation_spot_rfof:

spot_rfof
=========

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Description:Code parameters for Spot (Fokker-Planck code)

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
| nperstep                  | integer_ | Number of markers to be       |
|                           | minInclu | created every big time step   |
|                           | sive_1   |                               |
+---------------------------+----------+-------------------------------+
| nout1d                    | integer_ | Resolution of output          |
|                           | minInclu | 1D-profiles                   |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| nout2dr                   | integer_ | R-Resolution of output        |
|                           | minInclu | 2D-profiles                   |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| nout2dz                   | integer_ | Z-Resolution of output        |
|                           | minInclu | 2D-profiles                   |
|                           | sive_2   |                               |
+---------------------------+----------+-------------------------------+
| ksolver                   | integer_ | Flag for internal solver: 1 = |
|                           | minmaxIn | (R,Z) coordinates, 2 =        |
|                           | clusive_ | (PSI,THETA) Boozer            |
|                           | 12       | coordinates                   |
+---------------------------+----------+-------------------------------+
| bigwidth                  | float_mi | Duration of a big time step   |
|                           | nmaxIncl | (sec) for source update, RFOF |
|                           | usive_do | E-field normalisation, etc    |
|                           | t0001_do |                               |
|                           | t01      |                               |
+---------------------------+----------+-------------------------------+
| icrh_heating              | integer_ | Flag for ICRH heating (0 =    |
|                           | minmaxIn | NO, 1 = YES)                  |
|                           | clusive_ |                               |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+
| debug_mode                | integer_ | Flag for debug mode (0 =      |
|                           | minmaxIn | normal execution, 1 = debug   |
|                           | clusive_ | mode)                         |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+
| source_flag               | integer_ | Flag for source option        |
|                           | minmaxIn | (0=Spot-generated-alphas,     |
|                           | clusive_ | 2=Spot-generated-thermals-for |
|                           | 14       | -ICRH,                        |
|                           |          | 3=Spot-generated-NBI,         |
|                           |          | 4=marker-source)              |
+---------------------------+----------+-------------------------------+
| icrh_ion_mass             | float_mi | Mass of followed              |
|                           | nmaxIncl | ICRH-accelerated ion (if any) |
|                           | usive_me |                               |
|                           | ndeleiv  |                               |
+---------------------------+----------+-------------------------------+
| icrh_ion_charge           | float_mi | Charge of followed            |
|                           | nmaxIncl | ICRH-accelerated ion (if any) |
|                           | usive_me |                               |
|                           | ndeleiv  |                               |
+---------------------------+----------+-------------------------------+
| kforce_xml                | integer_ | Flag to force the use of XML  |
|                           | minmaxIn | input file for ICRF heating   |
|                           | clusive_ | (when = 1)                    |
|                           | 01       |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters          | --Direct | RFOF code parameters          |
|                           | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_cor | --Direct | Contains all fields needed    |
| e_param                   | ory--    | when coupling to RFOF         |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_cor | --Direct | List of optional physics      |
| e_param/assumptions       | ory--    | assumptions.                  |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| assume_static_resonance_p | boolean  | If true then the RF           |
| osition_during_RF_kick    |          | intraction induces no spatial |
|                           |          | motion of the orbit during    |
|                           |          | the wave-particle interaction |
|                           |          | (however the new drift orbit  |
|                           |          | may have a different spatial  |
|                           |          | extent)                       |
+---------------------------+----------+-------------------------------+
| use_drift_velocity_in_dop | boolean  | If true then the Doppler      |
| pler_shift                |          | shift due to the drift        |
|                           |          | velocity is included in the   |
|                           |          | resonance condition           |
+---------------------------+----------+-------------------------------+
| use_parallel_velocity_in_ | boolean  | If true then the Doppler      |
| doppler_shift             |          | shift due to the parallel     |
|                           |          | velocity is included in the   |
|                           |          | resonance condition           |
+---------------------------+----------+-------------------------------+
| assume_zero_larmor_radius | boolean  | If "true", then the finite    |
| _in_KPERPxRHO             |          | larmor radius effects in the  |
|                           |          | wave particle interaction are |
|                           |          | neglected                     |
+---------------------------+----------+-------------------------------+
| assume_kpar_is_nphi_over_ | boolean  | If "true" then the parallel   |
| R                         |          | wave number of is nphi/R,     |
|                           |          | otherwise the exact value is  |
|                           |          | used                          |
+---------------------------+----------+-------------------------------+
| assume_zero_order_FLR_for | boolean  | Neglect finite larmor radius  |
| _Pphi                     |          | (FLR) corrections to P_phi    |
+---------------------------+----------+-------------------------------+
| width_of_rf_resonance_lay | float    | Width of the resonance layer  |
| er                        |          | as a fraction of the          |
|                           |          | momentary major radius        |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_cor | --Direct | Bounding box in the poloidal  |
| e_param/bounding_box      | ory--    | cross section.                |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| Rmin                      | float    | Minimum major radius of the   |
|                           |          | bounding box [m]              |
+---------------------------+----------+-------------------------------+
| Rmax                      | float    | Maximum major radius of the   |
|                           |          | bounding box [m]              |
+---------------------------+----------+-------------------------------+
| Zmin                      | float    | Minimum vertical coordinate   |
|                           |          | of the bounding box [m]       |
+---------------------------+----------+-------------------------------+
| Zmax                      | float    | Maximum vertical coordinate   |
|                           |          | of the bounding box [m]       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_cor | --Direct |                               |
| e_param/resonance_memory  | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| nStoreTimes               | integer  | The number of time points to  |
|                           |          | be stored in the resonance    |
|                           |          | memory. These are used to     |
|                           |          | extrapolate the orbit to the  |
|                           |          | next upcoming resonance.      |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_cor | --Direct | Controlling the output        |
| e_param/IO_control        | ory--    | written to file               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| start_time_event_output   | float    | Time at which to start        |
|                           |          | generating event-output files |
+---------------------------+----------+-------------------------------+
| output__2D_RZ_out         | boolean  | If true, then 2D output in    |
|                           |          | (R,Z) will be generated for   |
|                           |          | the density of abosorbed      |
|                           |          | power and torque              |
+---------------------------+----------+-------------------------------+
| NRedges_2DgridRZ          | integer  | Number of horizontal grid     |
|                           |          | points in the 2D (R,z) grid   |
+---------------------------+----------+-------------------------------+
| NZedges_2DgridRZ          | integer  | Number of vertical grid       |
|                           |          | points in the 2D (R,z) grid   |
+---------------------------+----------+-------------------------------+
| output__Orbit             | boolean  | If true, then output of the   |
|                           |          | full orbits wil be generated  |
|                           |          | and stored to file            |
+---------------------------+----------+-------------------------------+
| MAX_number_of_points_stor | integer  | Maximum number of orbit       |
| ed_in_the_Orbit           |          | points written to file        |
+---------------------------+----------+-------------------------------+
| output__rf_kicks          | boolean  | If true, then a list of       |
|                           |          | rf-kicks will be generated    |
|                           |          | containing the location and   |
|                           |          | strength of the kick          |
+---------------------------+----------+-------------------------------+
| MAX_number_of_points_stor | integer  | Maximum number of rf-kick     |
| ed_in_rf_kick             |          | points written to file        |
+---------------------------+----------+-------------------------------+
| output__resonace_predicti | boolean  | If true, then a list of       |
| ons                       |          | rf-resonance preditions will  |
|                           |          | be generated containing the   |
|                           |          | present location and          |
|                           |          | predicted location of the     |
|                           |          | next resonance                |
+---------------------------+----------+-------------------------------+
| MAX_number_of_points_stor | integer  | Maximum number of             |
| ed_in_resonance_memory    |          | rf-resonance prediction       |
|                           |          | points written to file        |
+---------------------------+----------+-------------------------------+
| output__efield_normalizat | boolean  | If true, then a list of       |
| ion                       |          | electric field normalization  |
|                           |          | factors to file               |
+---------------------------+----------+-------------------------------+
| MAX_number_of_points_stor | integer  | Maximum number of electric    |
| ed_in_the_efield_normaliz |          | field normalizations          |
| ation                     |          | (time-vector) written to      |
|                           |          | output file                   |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_cor | --Direct | Parameters describing the     |
| e_param/quasilinear       | ory--    | quasilinear model             |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| MAX_relative_energy_kick  | float    | The I-perp kicks cannot be    |
|                           |          | larger than this fraction of  |
|                           |          | the input I-perp              |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_pla | --Direct |                               |
| sma_param                 | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_pla | --Direct |                               |
| sma_param/composition     | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| n_species                 | integer  | Number of plasma ion species  |
+---------------------------+----------+-------------------------------+
| amn                       | RFOF_Flo | Atomic mass number            |
|                           | atList   |                               |
+---------------------------+----------+-------------------------------+
| zn                        | RFOF_Flo | Nuclear charge in atomic      |
|                           | atList   | units                         |
+---------------------------+----------+-------------------------------+
| zion                      | RFOF_Flo | Ionic charge in atomic units  |
|                           | atList   |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wav | --Direct |                               |
| e_param                   | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| select_wave_from          | integer  | Select where the wave field   |
|                           |          | should be taken from. 0 :     |
|                           |          | wave generated from the data  |
|                           |          | in parametric_wave 1 : wave   |
|                           |          | read from ascii version of    |
|                           |          | EU-IM cpos, written using       |
|                           |          | write_cpo in the              |
|                           |          | write_structures module.      |
|                           |          | Filename is specified in      |
|                           |          | ascii_itm_wave/filename_ascii |
|                           |          | _itm_wave.                    |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wav | --Direct |                               |
| e_param/parametric_wave   | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| nfreq                     | integer  | Number of RF frequencies      |
+---------------------------+----------+-------------------------------+
| nnphi                     | integer  | Number of toroidal modes per  |
|                           |          | frequency                     |
+---------------------------+----------+-------------------------------+
| RFpower                   | RFOF_Flo | Power provided by the RF wave |
|                           | atList   | field                         |
+---------------------------+----------+-------------------------------+
| EfieldNormalisation       | RFOF_Flo | Normalisation factor for the  |
|                           | atList   | strength of the RF wave field |
+---------------------------+----------+-------------------------------+
| ratioEPlusOverEMinus      | RFOF_Flo | Ratio between the left- and   |
|                           | atList   | right-hand polarized electric |
|                           |          | wave field components         |
+---------------------------+----------+-------------------------------+
| freq                      | RFOF_Flo | RF wave frequency [Hz]        |
|                           | atList   |                               |
+---------------------------+----------+-------------------------------+
| nphi                      | RFOF_Int | Toroidal mode number          |
|                           | egerList |                               |
+---------------------------+----------+-------------------------------+
| kperp                     | RFOF_Flo | Perpendicular wave number     |
|                           | atList   | [1/m]                         |
+---------------------------+----------+-------------------------------+
| verticalCentre            | RFOF_Flo | Vertical centre of the        |
|                           | atList   | Gaussian RF wave field [m]    |
+---------------------------+----------+-------------------------------+
| verticalWidth             | RFOF_Flo | Vertical width of the         |
|                           | atList   | Gaussian RF wave field [m]    |
+---------------------------+----------+-------------------------------+
| filename_lion_fields      | string   | Filename for lion             |
|                           |          | corfields-file                |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wav | --Direct |                               |
| e_param/ascii_itm_wave    | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| filename_ascii_itm_wave   | string   | Name of input file containing |
|                           |          | the EU-IM cpo waves in ascii    |
|                           |          | format written using          |
|                           |          | write_cpo in the              |
|                           |          | write_structures module       |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wra | --Direct |                               |
| pper_param                | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wra | --Direct |                               |
| pper_param/time_stepping  | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| NtimeSteps                | nonNegat | Number of time steps (of      |
|                           | iveInteg | standalone RFOF orbit         |
|                           | er       | tracer).                      |
+---------------------------+----------+-------------------------------+
| dt                        | RFOF_Flo | Length of each time step [s]. |
|                           | atPositi |                               |
|                           | ve       |                               |
+---------------------------+----------+-------------------------------+
| nStoreOutTimes            | integer  | Number of time steps between  |
|                           |          | which the output is           |
|                           |          | accumulated before being      |
|                           |          | written to file.              |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wra | --Direct |                               |
| pper_param/magnetic_field | ory--    |                               |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| R0                        | float    | Major radius of the plasma    |
|                           |          | torus [m].                    |
+---------------------------+----------+-------------------------------+
| aminor                    | float    | Minor radius of the plasma    |
|                           |          | torus [m].                    |
+---------------------------+----------+-------------------------------+
| B0                        | float    | Magnetic field strength att   |
|                           |          | the magnetic axis [T].        |
+---------------------------+----------+-------------------------------+
| q                         | float    | Safety factor of the magnetic |
|                           |          | field.                        |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| /rfof_parameters/rfof_wra | --Direct | Defining the initial          |
| pper_param/markers        | ory--    | conditions for the markers in |
|                           |          | the RFOF wrapper              |
+---------------------------+----------+-------------------------------+
|                           |          |                               |
+---------------------------+----------+-------------------------------+
| species_index             | integer  | Species index within the      |
|                           |          | vector of particle species in |
|                           |          | the                           |
|                           |          | rfof_plasma_param/composition |
|                           |          | /*(),                         |
|                           |          | where \* is amn, zn and zion. |
|                           |          | species_index has be in the   |
|                           |          | range                         |
|                           |          | [1,rfof_plasma_param/composit |
|                           |          | ion/n_species]                |
+---------------------------+----------+-------------------------------+
| weight                    | float    | Marker weight                 |
+---------------------------+----------+-------------------------------+
| R                         | float    | Initial major radius position |
|                           |          | of the marker [m]             |
+---------------------------+----------+-------------------------------+
| z                         | float    | Initial veritical position of |
|                           |          | the marker [m]                |
+---------------------------+----------+-------------------------------+
| phi                       | float    | Initial toroidal angle of the |
|                           |          | marker [rad]                  |
+---------------------------+----------+-------------------------------+
| charge                    | float    | Charge of the marker [au]     |
+---------------------------+----------+-------------------------------+
| mass                      | float    | Mass of the marker [au]       |
+---------------------------+----------+-------------------------------+
| E                         | float    | Energy of the marker [eV]     |
+---------------------------+----------+-------------------------------+
| xi                        | float    | Pitch-angle of the marker [-] |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| integer_minInclusive_1    | integer  | Min(<=): 1                    |
+---------------------------+----------+-------------------------------+
| integer_minInclusive_2    | integer  | Min(<=): 2                    |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_1 | integer  | Min(<=): 1 Max(>=): 2         |
| 2                         |          |                               |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_1 | integer  | Min(<=): 1 Max(>=): 4         |
| 4                         |          |                               |
+---------------------------+----------+-------------------------------+
| integer_minmaxInclusive_0 | integer  | Min(<=): 0 Max(>=): 1         |
| 1                         |          |                               |
+---------------------------+----------+-------------------------------+
| float_minmaxInclusive_dot | float    | Min(<=): 1.e-4 Max(>=): 0.1   |
| 0001_dot01                |          |                               |
+---------------------------+----------+-------------------------------+
| float_minmaxInclusive_men | float    | Min(<=): 1.0 Max(>=): 300.0   |
| deleiv                    |          |                               |
+---------------------------+----------+-------------------------------+
| RFOF_FloatPositive        | float    | Min(<): 0.0                   |
+---------------------------+----------+-------------------------------+
| RFOF_FloatList            | float    |                               |
+---------------------------+----------+-------------------------------+
| RFOF_IntegerList          | integer  |                               |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
