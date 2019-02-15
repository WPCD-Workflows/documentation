.. _imp4_neoclassic:

Neoclassical Bootstrap Current Comparison
=========================================

The Models
----------

NeoWes is a simple neoclassical module intended for circular models,
using a set of formulae from Wesson's textbook Tokamaks. NeOS is Olivier
Sauter's package using a set of fitting coefficients to Fokker-Planck
results. NeoArt is the multi-species neoclassical code from Arthur
Peeters. Here we do a simple comparison.

In a model using simple profiles and the equilibrium code BDSEQ
(circular boundary surface, shifted-circle flux surfaces) we compare the
run of the bootstrap current and conductivity in the two models as a
function of \\( \\rho \\) which is defined as the normalised toroidal
flux radius rho_tor_norm in the CPO. An electron-proton plasma with
equal temperatures and densities is assumed with \\(
T=T_0\exp(-8\rho^2/3) \\qquad n=n_0\exp(-8\rho^2/7) \\qquad J_\varphi =
-{2B_0\over\mu_0 q_0}(1-\rho^2)\exp(-\rho^2) \\) with parameters \\( B_0
= -5.3\,{\rm T} \\qquad\qquad R_0 = 6.2\,{\rm m} \\qquad\qquad a =
2\,{\rm m} \\\\ T_0 = 10\,{\rm keV} \\qquad\qquad n_0 = 8.7\times
10^{19}\,{\rm m}^{-3} \\qquad\qquad q_0 = -1.5 \\) Of course, \\(
Z_{{\rm eff}}=1. \\) Note that in the CPOs \\( $J_\varphi$ \\) is \\(
R_0 \\) times jphi (ie, it is the covariant component). The sign
conventions for \\( $J_\varphi$ \\) and \\( B_0 \\) follow ITER (out of
the poloidal plane, on the right of the symmetry axis, from the point of
view of an observer in the toroidal midplane outside the tokamak).

The necessary CPO input to BDSEQ is

::

   equilibrium%global_param%toroid_field%b0
   equilibrium%global_param%toroid_field%r0
   equilibrium%eqgeometry%a_minor
   equilibrium%profiles_1d%rho_tor
   equilibrium%profiles_1d%pressure
   equilibrium%profiles_1d%jphi

The first three are \\( B_0,\, R_0,\, a, \\) respectively, and rho_tor
is \\( \\rho\,a \\) on the coreprof grid. The pressure and current are
found from \\( \\hbox{{\bf jphi}} = R_0 J_\varphi \\qquad \\hbox{{\bf
pressure}} = 2 n k_B T \\) also on the coreprof grid.

The following graph gives the results of the comparison. The solid lines
are from NeoArt, the dashed ones from NeoWes, and the dot-dashed ones
from NeOS. In the context of such a circular model the results are in
good agreement. On the conductivity, we don't have the one from NeoArt
yet so the other two are shown.

