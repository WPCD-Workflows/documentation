.. _imp4_neodv:

Neoclassical Diffusivity Comparison
===================================

The Models
----------

NeoWes is a simple neoclassical module intended for circular models,
using a set of formulae from Wesson's textbook Tokamaks. NClass is Wayne
Houlberg's code, well known as a standard tool. NeoArt is the
multi-species neoclassical code from Arthur Peeters. Here we do a simple
comparison of the electron and ion diffusivities using the IMP4 Shot 1
Run 1 base case (pure electron-deuterium plasma).

The equilibrium is re-done with BDSEQ, a simple model of circular
boundary surface, shifted-circle flux surfaces, since some newer
equilibrium CPO elements are needed. Hence only the profiles and \\( a,
\\) \\( R_0, \\) and \\( B_0 \\) are used from the database.

We compare the run of the particle and heat diffusivities with toroidal
flux radius. The density and temperature profiles are shown, and \\( q
\\) goes from about -1.5 to -3.3. The UALPython actor was used to do the
plots, which are shown for each neoclassical code. There appears to
still be a problem with this implementation of NClass.

