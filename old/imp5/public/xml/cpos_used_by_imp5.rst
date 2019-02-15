.. _common_imp5_cpo_input:

CPOs used by IMP5
=================

Here follows a preliminary lists of the cpo-fields used by most, but not
all, IMP5 codes.

To identify the importance of a cpo-field there is a priority index in
the table below. Here are the definitions of priority indexes: 0 =
undefined priority 1 = high priority; required by imp5 actors 2 = low
priority; recalculated in the code if not provided 3 = non-mandatory,
but used when provided (e.g. plasma may be used, but if the field is not
provided it assumed to be zero)

In the equilibrium CPO:

+---+--------------------------+--------------------------+----------+
| P | CPO-field                | Used by codes            | Comments |
| r |                          |                          |          |
| i |                          |                          |          |
| o |                          |                          |          |
| r |                          |                          |          |
| i |                          |                          |          |
| t |                          |                          |          |
| y |                          |                          |          |
+===+==========================+==========================+==========+
| 1 | equilibrium(*)%global_pa | `Gray <#imp5_listcodes_g |          |
|   | ram%mag_axis%position%r  | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `Gray <#imp5_listcodes_g |          |
|   | ram%mag_axis%position%z  | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `Mars <#imp5_listcodes_m |          |
|   | ram%mag_axis%bphi        | ars>`__,                 |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `Mars <#imp5_listcodes_m |          |
|   | ram%mag_axis%q           | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__,                   |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__,               |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `FPSIM <#imp5_listcodes_ |          |
|   | ram%toroid_field%r0      | fpsim>`__,               |          |
|   |                          | `Gray <#imp5_listcodes_g |          |
|   |                          | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `FPSIM <#imp5_listcodes_ |          |
|   | ram%toroid_field%b0      | fpsim>`__,               |          |
|   |                          | `Gray <#imp5_listcodes_g |          |
|   |                          | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `Gray <#imp5_listcodes_g |          |
|   | ram%psi_bound            | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `Gray <#imp5_listcodes_g |          |
|   | ram%psi_ax               | ray>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__,                   |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%global_pa | `Nemo <#imp5_listcodes_n |          |
|   | ram%i_plasma             | emo>`__,                 |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | Partically all `IMP5     |          |
|   | 1d%rho_tor               | codes <#imp5_listcodes>` |          |
|   |                          | __.                      |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | Partically all `IMP5     |          |
|   | 1d%psi                   | codes <#imp5_listcodes>` |          |
|   |                          | __.                      |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 1d%q                     | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__,                   |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `FPSIM <#imp5_listcodes_ |          |
|   | 1d%f_dia                 | fpsim>`__,               |          |
|   |                          | `Gray <#imp5_listcodes_g |          |
|   |                          | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__,                   |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Mars <#imp5_listcodes_m |          |
|   | 1d%ffprime               | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Mars <#imp5_listcodes_m |          |
|   | 1d%pressure              | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Mars <#imp5_listcodes_m |          |
|   | 1d%pprime                | ars>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `FPSIM <#imp5_listcodes_ |          |
|   | 1d%r_inboard             | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `FPSIM <#imp5_listcodes_ |          |
|   | 1d%r_outboard            | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Nemo <#imp5_listcodes_n |          |
|   | 1d%vprime                | emo>`__                  |          |
|   |                          | `nbisim <#imp5_listcodes |          |
|   |                          | _nbisim>`__              |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Nemo <#imp5_listcodes_n |          |
|   | 1d%dpsidrho_tor          | emo>`__                  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 1d%volume                | ray>`__,                 |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__,                 |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__        |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `TORIC <#imp5_listcodes_ |          |
|   | 1d%phi                   | toric>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | Required by pratically   |          |
|   | 1d%ftrap                 | all waves codes          |          |
+---+--------------------------+--------------------------+----------+
| 2 | equilibrium(*)%profiles_ | Pratically all `ECRH     |          |
|   | 1d%b_av                  | codes <#imp5_listcodes_e |          |
|   |                          | lectron_heating_codes>`_ |          |
|   |                          | _                        |          |
+---+--------------------------+--------------------------+----------+
| 2 | equilibrium(*)%profiles_ | Pratically all `ECRH     |          |
|   | 1d%b_min                 | codes <#imp5_listcodes_e |          |
|   |                          | lectron_heating_codes>`_ |          |
|   |                          | _                        |          |
+---+--------------------------+--------------------------+----------+
| 2 | equilibrium(*)%profiles_ | Pratically all `ECRH     |          |
|   | 1d%b_max                 | codes <#imp5_listcodes_e |          |
|   |                          | lectron_heating_codes>`_ |          |
|   |                          | _                        |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | All codes using          |          |
|   | 2d%grid_type             | 2D-profiles information  |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%grid%dim1             | ray>`__                  |          |
|   |                          | with (R,Z) grid,         |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%grid%dim2             | ray>`__                  |          |
|   |                          | with (R,Z) grid,         |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%r                     | ray>`__                  |          |
|   |                          | with (rho,theta) grid    |          |
|   |                          | and                      |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__                  |          |
|   |                          | with alt. coordinantes   |          |
|   |                          | no 1                     |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%z                     | ray>`__                  |          |
|   |                          | with (rho,theta) grid    |          |
|   |                          | and                      |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__                  |          |
|   |                          | with alt. coordinantes   |          |
|   |                          | no 1                     |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%psi                   | ray>`__                  |          |
|   |                          | with (rho,theta) grid,   |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__                  |          |
|   |                          | with alt. coordinantes   |          |
|   |                          | no 1,                    |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 0 | equilibrium(*)%profiles_ |                          |          |
|   | 2d%theta                 |                          |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%br                    | ray>`__,                 |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__,                 |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%bz                    | ray>`__,                 |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__,                 |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%profiles_ | `Gray <#imp5_listcodes_g |          |
|   | 2d%bphi                  | ray>`__,                 |          |
|   |                          | `Nemo <#imp5_listcodes_n |          |
|   |                          | emo>`__,                 |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Nemo <#imp5_listcodes_n |          |
|   | %position%r              | emo>`__                  |          |
|   |                          | with alt. coordinantes   |          |
|   |                          | no 1,                    |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Nemo <#imp5_listcodes_n |          |
|   | %position%z              | emo>`__                  |          |
|   |                          | with alt. coordinantes   |          |
|   |                          | no 1,                    |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Gray <#imp5_listcodes_g |          |
|   | %grid%dim1               | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Gray <#imp5_listcodes_g |          |
|   | %grid%dim2               | ray>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Mars <#imp5_listcodes_m |          |
|   | %jacobian                | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Mars <#imp5_listcodes_m |          |
|   | %g_11                    | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Mars <#imp5_listcodes_m |          |
|   | %g_12                    | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Mars <#imp5_listcodes_m |          |
|   | %g_22                    | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%coord_sys | `Mars <#imp5_listcodes_m |          |
|   | %g_33                    | ars>`__,                 |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__                    |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `Nemo <#imp5_listcodes_n |          |
|   | y%a_minor                | emo>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `Nemo <#imp5_listcodes_n |          |
|   | y%geom_axis%r            | emo>`__,                 |          |
|   |                          | `Mars <#imp5_listcodes_m |          |
|   |                          | ars>`__,                 |          |
|   |                          | `Torbeam <#imp5_listcode |          |
|   |                          | s_torbeam>`__,           |          |
|   |                          | `BBNBI <#imp5_listcodes_ |          |
|   |                          | bbnbi>`__,               |          |
|   |                          | `Toray-FOM <#imp5_listco |          |
|   |                          | des_toray-fom>`__,       |          |
|   |                          | `EVE <#imp5_listcodes_ev |          |
|   |                          | e>`__,                   |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `Gray <#imp5_listcodes_g |          |
|   | y%boundary%r             | ray>`__,                 |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `Gray <#imp5_listcodes_g |          |
|   | y%boundary%z             | ray>`__,                 |          |
|   |                          | `TORIC <#imp5_listcodes_ |          |
|   |                          | toric>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `BBNBI <#imp5_listcodes_ |          |
|   | y%xpts%r                 | bbnbi>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `BBNBI <#imp5_listcodes_ |          |
|   | y%xpts%z                 | bbnbi>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | equilibrium(*)%eqgeometr | `BBNBI <#imp5_listcodes_ |          |
|   | y%elongation             | bbnbi>`__,               |          |
|   |                          | `FWTOR <#imp5_listcodes_ |          |
|   |                          | fwtor>`__                |          |
+---+--------------------------+--------------------------+----------+

In the coreprof CPO:

+---+--------------------------+--------------------------+----------+
| P | CPO-field                | Used by codes            | Comments |
| r |                          |                          |          |
| i |                          |                          |          |
| o |                          |                          |          |
| r |                          |                          |          |
| i |                          |                          |          |
| t |                          |                          |          |
| y |                          |                          |          |
+===+==========================+==========================+==========+
| 1 | coreprof(*)%rho_tor      | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%rho_tor_norm | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%psi%value    | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%ni%value     | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%ne%value     | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%Ti%value     | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%Te%value     | Pratically all `IMP5     |          |
|   |                          | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%composition% | Pratically all `IMP5     |          |
|   | amn                      | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%composition% | Pratically all `IMP5     |          |
|   | zn                       | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+
| 1 | coreprof(*)%composition% | Pratically all `IMP5     |          |
|   | zion                     | codes <#imp5_listcodes>` |          |
|   |                          | __                       |          |
+---+--------------------------+--------------------------+----------+

In the waves CPO:

+---+--------------------------+--------------------------+----------+
| P | CPO-field                | Used by codes            | Comments |
| r |                          |                          |          |
| i |                          |                          |          |
| o |                          |                          |          |
| r |                          |                          |          |
| i |                          |                          |          |
| t |                          |                          |          |
| y |                          |                          |          |
+===+==========================+==========================+==========+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %global_param%frequency  | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %global_param%power_tot  | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %global_param%type       | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %global_param%ntor       | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %global_param%pow_i      | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %composition%amn         | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %composition%zion        | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %grid_1d%rho_tor         | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %grid_1d%psi             | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %grid_2d%theta           | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %profiles_1d%powd_ntor_i | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %profiles_2d%powd_ntor_i | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %fullwave%e_plus         | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+
| 1 | waves(*)%coherentwave(*) | `FPSIM <#imp5_listcodes_ |          |
|   | %fullwave%e_minus        | fpsim>`__                |          |
+---+--------------------------+--------------------------+----------+

In the distsource CPO:

+---+------------------------------+--------------+------------------+
| P | CPO-field                    | Used by      | Comments         |
| r |                              | codes        |                  |
| i |                              |              |                  |
| o |                              |              |                  |
| r |                              |              |                  |
| i |                              |              |                  |
| t |                              |              |                  |
| y |                              |              |                  |
+===+==============================+==============+==================+
| 1 | distsource(*)%composition%am | `NBISIM <#im |                  |
|   | n                            | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 1 | distsource(*)%composition%zn | `NBISIM <#im |                  |
|   |                              | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 1 | distsource(*)%source(*)%src_ | `NBISIM <#im |                  |
|   | spec                         | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 1 | distsource(*)%source(*)%prof | `NBISIM <#im |                  |
|   | iles_1d%rho_tor              | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 3 | distsource(*)%source(*)%prof | `NBISIM <#im |                  |
|   | iles_1d%rho_tor_norm         | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 1 | distsource(*)%source(*)%prof | `NBISIM <#im |                  |
|   | iles_1d%psi                  | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 1 | distsource(*)%source(*)%prof | `NBISIM <#im |                  |
|   | iles_1d%pow_den%value        | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 1 | distsource(*)%source(*)%prof | `NBISIM <#im |                  |
|   | iles_1d%src_rate%value       | p5_listcodes |                  |
|   |                              | _nbisim>`__  |                  |
+---+------------------------------+--------------+------------------+
| 0 | distsource(*)%source(*)%sour | `NBISIM <#im | If either        |
|   | ce_grid%grid_info%grid_coord | p5_listcodes | ...%profiles_1d% |
|   |                              | _nbisim>`__  | pow_den%value    |
|   |                              |              | or               |
|   |                              |              | ...%profiles_1d% |
|   |                              |              | src_rate%value   |
|   |                              |              | are NOT          |
|   |                              |              | associated, only |
|   |                              |              | then is          |
|   |                              |              | ...%grid_info%gr |
|   |                              |              | id_coord         |
|   |                              |              | used.            |
+---+------------------------------+--------------+------------------+
| 0 | distsource(*)%source(*)%sour | `NBISIM <#im | If either        |
|   | ce_grid%grid_info%discrete_d | p5_listcodes | ...%profiles_1d% |
|   | ims                          | _nbisim>`__  | pow_den%value    |
|   |                              |              | or               |
|   |                              |              | ...%profiles_1d% |
|   |                              |              | src_rate%value   |
|   |                              |              | are NOT          |
|   |                              |              | associated, only |
|   |                              |              | then is          |
|   |                              |              | ...%grid_info%di |
|   |                              |              | screte_dims      |
|   |                              |              | used.            |
+---+------------------------------+--------------+------------------+
| 0 | distsource(*)%source(*)%sour | `NBISIM <#im | If either        |
|   | ce_grid%dim<X>               | p5_listcodes | ...%profiles_1d% |
|   |                              | _nbisim>`__  | pow_den%value    |
|   |                              |              | or               |
|   |                              |              | ...%profiles_1d% |
|   |                              |              | src_rate%value   |
|   |                              |              | are NOT          |
|   |                              |              | associated, only |
|   |                              |              | then is          |
|   |                              |              | ...%source_grid% |
|   |                              |              | dim<X>           |
|   |                              |              | used.            |
+---+------------------------------+--------------+------------------+

Contact Thomas Johnson (johnso@kth.se) for comments and suggestions.

