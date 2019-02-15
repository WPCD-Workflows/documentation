.. toctree::
   :maxdepth: 2

   ../../../amns/public/xml/amns_user_interface
   ../../../amns/public/xml/amns_data_providers
   ../../../amns/public/xml/amns_cpo

.. _amns_documentation:

AMNS Documentation
==================

The AMNS library is meant to be called by Work Package codes if the
codes need data for Atomic, Molecular, Nuclear or Surface processes. The
calling sequence is described in more detail below, but the basic idea
is: (1) initialize the package; (2) request data for a particular
reaction by initializing a "table" for that reaction; (3) (repeatedly)
requesting data for that reaction as a fuction of plasma or other
parameters; (4) finishing with the table; and (5) finishing with the
AMNS library.

The actual AMNS data is provided by CPOs stored under the "amns" tokamak
and will first be searched for in the user's database, and if not found
there, the system will default to obtaining the data from the public
AMNS database. Multiple versions of the AMNS data are possible: in 4.09a
and 4.09b this was done via a mysql database; in 4.10a and later this is
done by having an index block stored in shot 0, run 1 of the AMNS CPO.

Some presentations:

-  Nuclear reactions
   (
   pdf
   ), by V. Kiptily
-  Simulations of the edge plasma: the role of atomic, molecular and
   surface physics
   (
   pdf
   ), by D. P. Coster, S. Gori, X. Bonnin, D.Reiter, A.Kukushkin, P.
   Krstic, P. Strand, L.-G. Eriksson, Contributors to the EFDA TF EU-IM
-  Atomic, Molecular, Surface and Nuclear (AMSN) data for the EU-IM-TF
   (
   pdf
   ), presented by D.P. Coster (IMP3 Leader) at the ADAS workshop, based
   on the talk given by Lars-Goran Eriksson at the EU-IM General Meeting,
   2008-09
-  EU-IM AMNS Interface
   (
   pdf
   ), by D.P. Coster

Some papers:

-  Simulations of the edge plasma: the role of atomic, molecular and
   surface physics
   (
   pdf
   ), by D.P. Coster, X. Bonnin, D. Reiter, A. Kukushkin, S. Gori, P.
   Krstic, P. Strand, L.-G. Eriksson and Contributors to the EFDA-TF-EU-IM

The present coding for the AMNS project is done in the gforge `amnsproto
project <https://gforge6.eufus.eu/project/amnsproto/>`__.

Significant events
------------------

-  
-  
-  
-  ??: removal of the mysql interface for 4.10a and the storing of the
   version data under run 0, shot 1
-  2011-05-03: allow for writing an HDF5 version of the AMNS data
-  2011-04-26: added top level README to repository
-  2011-04-26: tags/library/4.09a version of the AMNS library routines
-  2011-04-26: tags/library/4.08b version of the AMNS library routines
-  2011-04-15: 4.09a version of the AMNS write routines
-  2011-04-13: mysql access routines added (used to store version
   numbers)
-  2010-12-14: (hopefully) generic version of carbon_db driven by
   adas_amns.data
-  2009-02-20: Moved the repository to the EFDA-EU-IM GForge system.

