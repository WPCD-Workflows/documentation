.. _FluxDiffusion:

The Flux Diffusion Equation in a Transport Model
================================================

Overview
--------

The flux diffusion equation in a quasistatically varying tokamak
configuration close to dynamical (MHD, flows) equilibrium is a
fundamental constituent of tokamak transport modelling. For reasons
having to do with the properties of microturbulence, the poloidal flux
transport is controlled by collisional (neoclassical) diffusion and not
by "anomalous transport" due to turbulence, while other quantities such
as main species particles and heat are ruled by the turbulence. For any
level of detail not shown here, see F Hinton and R Hazeltine, "Theory of
plasma transport in toroidal confinement systems," Rev Mod Phys 48
(1976) 239-308 for the flux diffusion process and B Scott, "The
character of transport caused by ExB drift turbulence," Phys Plasmas 10
(2003) 963-976 for the special properties of transport driven by
small-scale pressure driven ExB microturbulence.

Relevant Maxwell Equations
--------------------------

The main Maxwell equations from which The flux diffusion is derived from
application of Maxwell's equations to a model of axisymmetric MHD which
is assumed to be arbitrarily close to dynamical equlibrium. An
axisymmetric configuration is assumed with turbulence treated as an
ensemble-averaged flux in a mean field description, with large-scale
motion close to equilibrium (hence, e.g., the parallel gradient of
equilibrium quantities such as density, pressure, or toroidal rotation
is negligible). The relevant low-frequency Maxwell equations are \\(
{\partial\vec B\over\partial t} = -\vec\nabla\times\vec E \\qquad\qquad
\\vec\nabla\times\vec B = \\mu_0\vec J \\qquad\qquad
\\vec\nabla\cdot\vec B = 0 \\) and the relevant MHD equations are \\(
\\vec E +\vec v\times\vec B = {E_\parallel\over B}\vec B \\qquad\qquad
\\rho_M{d\vec v\over d t} = \\vec J\times\vec B - \\vec\nabla p \\) The
latter equation is used only to motivate the equilibrium magnetic field
representation, and dissipative processes are accounted for by the
parallel electric field \\( E_\parallel \\) The first Maxwell equation,
Faraday's law, is the main one, while all the others are in support of
it.

Tokamak Magnetic Field Representation
-------------------------------------

The axisymmetric magnetic field is given by \\( \\vec B =
I\vec\nabla\varphi + \\vec\nabla\psi\times\vec\nabla\varphi \\) where
\\( I \\) and \\( \\psi \\) are scalar fields in the poloidal plane (see
EU-IM Conventions). The equilibrium constraint is \\( I=I(\psi) \\) which
assumes the shear Alfven balances are in quasistatic equilibrium. The
relation to EU-IM quantities is \\( I=F_{{\rm dia}} \\) and \\(
\\psi=\Psi/2\pi \\) in the equilibrium CPO.

Toroidal Flux and Flux Diffusion
--------------------------------

The flux diffusion equation is found by applying the relevant operations
to Faraday's law to obtain time dependent equations for \\( I \\) and
\\( \\psi \\) separately, considering the definition of the toroidal
flux as \\( \\Phi = \\int d^3V{I\over 2\pi R^2} \\) and then considering
\\( \\partial\Phi/\partial t \\) with the integration over the volume
enclosed by a particular flux surface (value of \\( \\psi \\)). The
change in the volume enclosed by a diffusing flux surface is determined
by \\( \\partial\psi/\partial t \\) which means both components of
Faraday's law enter. The loop voltage \\( V_{{\rm loop}} \\) appears as
a constant of integration (removing the curl in Faraday's law). The
relation \\( B^2R^2 = I^2 + \\abs{\nabla\psi}^2 \\) is used to collect
terms. Finally, the equation giving \\( \\partial\Phi/\partial t \\) at
constant \\( \\psi \\) is turned around to get \\(
\\partial\Psi/\partial t \\) at constant \\( \\Phi \\). The result is
\\( \\left.{\partial\Psi\over\partial t}\right\vert_\Phi = V_{{\rm
loop}} - {\left\langle E_\parallel B\right\rangle \\over \\left\langle
F_{{\rm dia}}/2\pi R^2\right\rangle} \\) given in terms of the EU-IM
quantities. The angle brackets denote the flux surface average.
Additional effects consider the equation at constant toroidal flux
radius \\( \\rho_{{\rm tor}} \\) allowing for possible time dependence
of the vacuum magnetic field \\( I_0 \\equiv B_0R_0. \\)

This equation is general, since all relevant dissipation effects are
contained in a nonzero \\( E_\parallel. \\) For the detailed derivation
including the explicit form of the diffusion term and the treatment of
noninductive effects including the possibility of anomalous resistivity
due to magnetic turbulence please see `this
write-up. <http://www.rzg.mpg.de/~bds/cyclone/induction.pdf>`__

Most EU-IM workflows use a model for \\( E_\parallel \\) with neoclassical
condictivity (inverse resistivity) governing diffusion and a
non-inductive current comprising all other effects (these are sigma_par
and jni in the coretransp CPO, which are loaded from sigma and jboot in
the neoclassic CPO and j in the coresource CPO. In special circumstances
(mainly sawtooth events and disruptions, but any process involving
considerable reconnection affecting large scales), anomalous resistivity
can be modelled using sigma in the coretransp CPO). These can all be
loaded into sigma and/or eparallel in the coreprof CPO.

