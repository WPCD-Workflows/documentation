.. _imp4_coretransp:

How to Load the Coretransp CPO
==============================

Where to Put the Ds and Vs additional to the Fluxes
---------------------------------------------------

The CPO form for each transport channel contains diff_eff, vconv_eff,
and flux as the three pieces of relevance to us.

As the simplest example we take the electron temperature channel
(conductive heat flux). The entire section is coretransp%te_transp which
is of type transcoefel. The contents are then given by the relevant
section of euitm_schemas which is

::

   type type_transcoefel
     real(DP),pointer  :: diff_eff(:) => null()
     real(DP),pointer  :: vconv_eff(:) => null()
     real(DP),pointer  :: flux(:) => null()
     type (type_offdiagel) :: off_diagonal
     integer  :: flag=-999999999
   endtype

So for these the first three elements are all dimensioned to nrho which
is the number of radial points on the turbulence code's grid. It has
been decided (Cyprus 2011 Code Camp) that the IMP4 codes should not try
to interpolate onto another CPO grid, because the transport modelling
should be left with the flexibility (ie, take the core portion from a
global code and the edge layer from an edge code which might have
different physics). The off-diagonal elements are left blank by
turbulence codes.

The next is the electron density channel (main particle flux). The
entire section is coretransp%ne_transp which is of type ne_transp. The
contents are then given by the relevant section of euitm_schemas which
is

::

   type type_ne_transp
     real(DP),pointer  :: diff_eff(:,:) => null()
     real(DP),pointer  :: vconv_eff(:,:) => null()
     real(DP),pointer  :: flux(:) => null()
     type (type_offdiagel) :: off_diagonal
     integer  :: flag=-999999999
   endtype

which is just like the transcoefel except the first two elements have an
extra index (the last one). This is dimensioned 1:3 and tells the
transport solver which coefficient appears with convective heat fluxes:
the multiplier is 0, 3/2, or 5/2, and the relevant D and V go into
position 1, 2, or 3, respectively. It is possible to have two channels
with different multipliers. The ExB transport has multiplier 3/2 due to
the Poynting cancellation, but the parallel velocity component of
magnetic flutter has multiplier 5/2. So the conductive D and V
coefficients are added together into the te_transp channel, and the
particle D and V coefficients from the ExB and flutter pieces are put
into positions 2 and 3, respectively. Note that although the part of
magnetic flutter transport arising from parallel current and radial
magnetic fluctuations vanishes in the average, the ion parallel velocity
is left over and can contribute in unusual situations.

The ion species are done just like the electrons, but the types are
transcoefion and ni_transp with an extra second index in all variables,
for the ion species index. For a pure plasma (e and i only), the
dimension of the second index is nion = 1 and the density D and V now
have a third index which is the one for the 0, 3/2, or 5/2 multipliers.
All other considerations are as for the electrons.

Examples for how these should be loaded appear in
~bscott/public/HDF5_files/global/ and
~bscott/public/HDF5_files/fluxtube/ for global and fluxtube codes,
respectively, with the filename being itmfluxes.f90

