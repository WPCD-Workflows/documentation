.. _imp4_aux_actors:

Auxiliary IMP4 Actors
=====================

Where to get them
-----------------

These are located on Gforge in kepleractors/tags/4.10b/imp4/ and
kepleractors/trunk/4.10b/imp4/ where the number refers to UAL version
and will update in step with the UAL. Most up to date for developers:
the versions in /pfs/home/bds/public/4.10b.10_actors which are ready for
import (latest: 16h00 Thu 26 Mar 2015). For interpolation purposes rho
tor norm must be set and filled.

IMP4DV
------

Purpose: accept coretransp fluxes and fill diff_eff and vconv_eff fields

-  inputs: equilibrium, coreprof, coretransp
-  output: coretransp
-  no parameters

IMP4imp
-------

Purpose: fill the impurity fields, diff_eff and vconv_eff for nz_transp
(dynamical alignment rules, use D for electrons and V to set
ambipolarity)

-  inputs: coreprof, coreimpur, coretransp
-  output: coretransp
-  no parameters

