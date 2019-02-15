.. _amns_compositions:

AMNS Compositions
=================

We look at the compositions sub-structure, and give an example

::

   compositions%
           nuclei(:)%
                   zn
                   amn
                   label
           ions(:)%
                   nucindex
                   zion
                   imp_flag
                   label
           impurities(:)%
                   nucindex
                   i_ion
                   nzimp
                   zmin
                   zmax
                   label
           neutralscomp(:)%
                   neutcomp(:)%
                           nucindex
                           multiplicity
                   type(:)%
                           id
                           flag
                           description
                   label

We will consider the example of D+, T+, C1+ .. C6+, D2, DT, T2, D0
(cold), D0 (thermal), T0 (cold), T0 (thermal), C0 (cold), C0 (thermal)

::

   compositions%nuclei(1)%zn = 1.0
   compositions%nuclei(1)%amn = 2.0
   compositions%nuclei(1)%label = 'D'

   compositions%nuclei(2)%zn = 1.0
   compositions%nuclei(2)%amn = 3.0
   compositions%nuclei(2)%label = 'T'

   compositions%nuclei(3)%zn = 6.0
   compositions%nuclei(3)%amn = 12.0
   compositions%nuclei(3)%label = 'C'

   compositions%ions(1)%nucindex = 1
   compositions%ions(1)%zion = 1.0
   compositions%ions(1)%imp_flag = 0
   compositions%ions(1)%label = 'D+'

   compositions%ions(2)%nucindex = 2
   compositions%ions(2)%zion = 1.0
   compositions%ions(2)%imp_flag = 0
   compositions%ions(2)%label = 'T+'

   compositions%impurities(1)%nucindex = 3
   compositions%impurities(1)%i_ion = 0
   compositions%impurities(1)%nzimp = 6
   compositions%impurities(1)%zmin = 1.0 2.0 3.0 4.0 5.0 6.0
   compositions%impurities(1)%zmax = 1.0 2.0 3.0 4.0 5.0 6.0
   compositions%impurities(1)%label = 'C1+' 'C2+' 'C3+ 'C4+' 'C5+' 'C6+'

   compositions%neutralscomp(1)%neutcomp(1)%nucindex = 1
   compositions%neutralscomp(1)%neutcomp(1)%multiplicity = 2
   compositions%neutralscomp(1)%type(1)%id = 'cold'     
   compositions%neutralscomp(1)%type(1)%flag = 0
   compositions%neutralscomp(1)%type(1)%description = 'Cold neutrals'
   compositions%neutralscomp(1)%label = 'D2'

   compositions%neutralscomp(2)%neutcomp(1)%nucindex = 1
   compositions%neutralscomp(2)%neutcomp(1)%multiplicity = 1
   compositions%neutralscomp(2)%neutcomp(2)%nucindex = 2
   compositions%neutralscomp(2)%neutcomp(2)%multiplicity = 1
   compositions%neutralscomp(2)%type(1)%id = 'cold'     
   compositions%neutralscomp(2)%type(1)%flag = 0
   compositions%neutralscomp(2)%type(1)%description = 'Cold neutrals'
   compositions%neutralscomp(2)%label = 'DT'

   compositions%neutralscomp(3)%neutcomp(1)%nucindex = 2
   compositions%neutralscomp(3)%neutcomp(1)%multiplicity = 2
   compositions%neutralscomp(3)%type(1)%id = 'cold'     
   compositions%neutralscomp(3)%type(1)%flag = 0
   compositions%neutralscomp(3)%type(1)%description = 'Cold neutrals'
   compositions%neutralscomp(3)%label = 'D2'

   compositions%neutralscomp(4)%neutcomp(1)%nucindex = 1
   compositions%neutralscomp(4)%neutcomp(1)%multiplicity = 1
   compositions%neutralscomp(4)%type(1)%id = 'cold'
   compositions%neutralscomp(4)%type(1)%flag = 0
   compositions%neutralscomp(4)%type(1)%description = 'Cold neutrals'
   compositions%neutralscomp(4)%type(2)%id = 'thermal'
   compositions%neutralscomp(4)%type(2)%flag = 1
   compositions%neutralscomp(4)%type(2)%description 'Thermal neutrals'
   compositions%neutralscomp(4)%label = 'D0'

   compositions%neutralscomp(5)%neutcomp(1)%nucindex = 2
   compositions%neutralscomp(5)%neutcomp(1)%multiplicity = 1
   compositions%neutralscomp(5)%type(1)%id = 'cold'
   compositions%neutralscomp(5)%type(1)%flag = 0
   compositions%neutralscomp(5)%type(1)%description = 'Cold neutrals'
   compositions%neutralscomp(5)%type(2)%id = 'thermal'
   compositions%neutralscomp(5)%type(2)%flag = 1
   compositions%neutralscomp(5)%type(2)%description 'Thermal neutrals'
   compositions%neutralscomp(5)%label = 'T0'

   compositions%neutralscomp(6)%neutcomp(1)%nucindex = 3
   compositions%neutralscomp(6)%neutcomp(1)%multiplicity = 1
   compositions%neutralscomp(6)%type(1)%id = 'cold'
   compositions%neutralscomp(6)%type(1)%flag = 0
   compositions%neutralscomp(6)%type(1)%description = 'Cold neutrals'
   compositions%neutralscomp(6)%type(2)%id = 'thermal'
   compositions%neutralscomp(6)%type(2)%flag = 1
   compositions%neutralscomp(6)%type(2)%description 'Thermal neutrals'
   compositions%neutralscomp(6)%label = 'C0'

The plasma%species_index entries for the wall0d component of the wall
CPO could then look like this:

::

   wall%wall0d%plasma%species_index( 1,1) = 1   % D1+
   wall%wall0d%plasma%species_index( 1,2) = 1
   wall%wall0d%plasma%species_index( 1,3) = 0

   wall%wall0d%plasma%species_index( 2,1) = 1   % T1+
   wall%wall0d%plasma%species_index( 2,2) = 1
   wall%wall0d%plasma%species_index( 2,3) = 0

   wall%wall0d%plasma%species_index( 3,1) = 2   % C1+
   wall%wall0d%plasma%species_index( 3,2) = 1
   wall%wall0d%plasma%species_index( 3,3) = 1

   wall%wall0d%plasma%species_index( 4,1) = 2   % C2+
   wall%wall0d%plasma%species_index( 4,2) = 1
   wall%wall0d%plasma%species_index( 4,3) = 2

   wall%wall0d%plasma%species_index( 5,1) = 2   % C3+
   wall%wall0d%plasma%species_index( 5,2) = 1
   wall%wall0d%plasma%species_index( 5,3) = 3

   wall%wall0d%plasma%species_index( 6,1) = 2   % C4+
   wall%wall0d%plasma%species_index( 6,2) = 1
   wall%wall0d%plasma%species_index( 6,3) = 4

   wall%wall0d%plasma%species_index( 7,1) = 2   % C5+
   wall%wall0d%plasma%species_index( 7,2) = 1
   wall%wall0d%plasma%species_index( 7,3) = 5

   wall%wall0d%plasma%species_index( 8,1) = 2   % C6+
   wall%wall0d%plasma%species_index( 8,2) = 1
   wall%wall0d%plasma%species_index( 8,3) = 6

   wall%wall0d%plasma%species_index( 9,1) = 3   % D, thermal
   wall%wall0d%plasma%species_index( 9,2) = 4
   wall%wall0d%plasma%species_index( 9,3) = 2

   wall%wall0d%plasma%species_index(10,1) = 3   % T, thermal
   wall%wall0d%plasma%species_index(10,2) = 5
   wall%wall0d%plasma%species_index(10,3) = 2

   wall%wall0d%plasma%species_index(11,1) = 3   % C, thermal
   wall%wall0d%plasma%species_index(11,2) = 6
   wall%wall0d%plasma%species_index(11,3) = 2

   wall%wall0d%plasma%species_index(12,1) = 3   % D2, cold
   wall%wall0d%plasma%species_index(12,2) = 1
   wall%wall0d%plasma%species_index(12,3) = 1

   wall%wall0d%plasma%species_index(13,1) = 3   % DT, cold
   wall%wall0d%plasma%species_index(13,2) = 2
   wall%wall0d%plasma%species_index(13,3) = 1

   wall%wall0d%plasma%species_index(14,1) = 3   % T2, cold
   wall%wall0d%plasma%species_index(14,2) = 3
   wall%wall0d%plasma%species_index(14,3) = 1

   wall%wall0d%plasma%species_index(15,1) = 3   % D, cold
   wall%wall0d%plasma%species_index(15,2) = 4
   wall%wall0d%plasma%species_index(15,3) = 1

   wall%wall0d%plasma%species_index(16,1) = 3   % T, cold
   wall%wall0d%plasma%species_index(16,2) = 5
   wall%wall0d%plasma%species_index(16,3) = 1

   wall%wall0d%plasma%species_index(17,1) = 3   % C, cold
   wall%wall0d%plasma%species_index(17,2) = 6
   wall%wall0d%plasma%species_index(17,3) = 1

