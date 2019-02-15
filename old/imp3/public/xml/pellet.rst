.. toctree::
   :maxdepth: 2

The

.. _Pellet:

Pellet
======

Aims
----

-  The robust approach: the pellet is considered as an instantaneous
   event and only its influence on the electron and ion temperature and
   density profiles is taken into account. This module is quick, but
   provides no information of the details of the ablation physics and
   cloud dynamics. The pellet CPO follows this more simple approach.
-  The detailed approach: A C++ code was developed describing the pellet
   ablation and cloud evolution in the direction parallel to the
   magnetic field lines. This module was adopted for the gateway,
   however as presently is only a need for the robust approach the
   pellet CPO and actors were prepared accordingly.

Documentation for the Pellet CPO
--------------------------------

-  A short description of the pellet CPO. The goal of this description
   was to provide information for the project leader and other pellet
   experts on the status of the pellet CPO
   Description of the Pellet CPO
-  The pellet CPO is implemented in ETS workflows. To use it please
   visit the ETS website.

Pellets in ETS: first results
-----------------------------

The instantaneous pellet impact on plasma parameters are shown in the
figure below by comparing the rho toroidal dependence of different
plasma parameters before (dashed lines) and after (continuous lines)
pellet injection:

-  the electron temperature (upper left) is strongly decreased
-  the electron density (upper right) is increased
-  the current density profile (lower right) is changed due to the
   temperature reduction
-  the q profile (lower left) is basically not affected

Please note: the pellet parameters were chosen to emphasize the pellet
impact on the plasma. Please see the documentation if you would like to
know more about the pellet CPO.
To be done
----------

-  To adopt the code for arbitrary pellet injection
-  include drifts
-  pellet ablation in the edge is missing (Rho poloidal dependence of
   R,z)

