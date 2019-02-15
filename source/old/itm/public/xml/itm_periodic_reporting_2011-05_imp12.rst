.. _itm_status_2011-05_imp12:

1. Christian Konz

   -  updated HELENA, PROGEN, JALPHA, and ILSA to 4.08b

   -  added output of MHD modes for mishka_1 modus to ILSA

   -  added Python visualization script for 2D (poloidal cross section)
      visualization of linear MHD modes to ILSA package

   -  created complete HELENA-ILSA-visualization workflow (used at
      EUFORIA review)

   -  HPC-FF:

      -  created HPC-FF actor for ILSA using HPC2K
      -  tested mixed EU-IM Gateway/HPC-FF workflow (HELENA on Gateway,
         ILSA on HPC-FF) using Yann Frauel's HPC2K

2. Fréderic Imbeaux

   -  started to use MHD stability chain for post-processing of CRONOS
      simulations; status: debugging HELENA

   -  started implementation of EQUAL software in Tore Supra
      post-processing chain; status: awaiting EQUAL version including
      polarimetry constraints

3. Pablo García Müller

   -  create Python module (visit_writer) to transform the numpy arrays
      and the node connectivity from linear MHD modes in Fourier space
      into VTK coding for 3D mode visualization

4. George Poulipoulis

   -  familiarized with HELENA

   -  derived transformation equations connecting the quantities in the
      code with those of the transformed generalised Grad-Shafranov
      equation which describes equilibrium states with flow

   -  started to include parallel, incompressible plasma flow in HELENA

5. Dimitriy Yadykin

   -  MARS-F:

      -  development of vacuum module (to create vacuum metrics,
         formerly done directly by CHEASE) completed

      -  module tested for conformal wall and equistant vacuum mesh
         (planned to include non-conformal wall and mesh packing)

   -  CarMa:

      -  created preliminary CarMa actor (still reading inputs from
         files, some problems under Kepler)

6. Oliviero Barana

   -  workflow simulating feedback control of the ITER gaps using
      CEDRES++ as tokamak physics model under 4.08a

   -  equivalent workflow using a finite state machine

   -  upgrading of workflows to 4.08b ongoing

7. Calin Atanasiu

   -  continued development of model for wall response (3D wall with
      holes) to external kinks modes (on ITER)

   -  replaced IMSL and NAG routines by open source routines

   -  started implementation on the EU-IM Gateway

8. Cédric Boulbe

   -  CEDRES++ updated to 4.08b

   -  geometric coefficients for ETS added

   -  introduced a library of linear solvers

   -  validation of evolutive version of CEDRES++ making good progress

   -  memory leak problem fixed

   -  coupling to ETS will be done in June

   -  cannot attend July code camp (clashes with conference)

11:07:55Z coster $
