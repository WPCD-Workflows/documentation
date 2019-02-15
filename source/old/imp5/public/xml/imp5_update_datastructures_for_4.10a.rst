.. _imp5_datastructures_updates_for_4.10a:

Development of the IMP5 cpos for 4.10a
======================================

Below is a list of changes to the IMP5 CPOs and the state of the
implementation and testing at the time of the last update (see the
bottom of the page).

Contact persons: `Thomas Johnson <#contact_thomas_johnson>`__.

.. _imp5_datastructures_updates_for_4.10a_overview:

Overview of main changes
------------------------

There are two main changes for the 4.10a release:

-  We have introduced the complex-grid structure (so called grid-cpo)
   for multidimensional arrays in waves, distsource and distribution.
   However, the old structures are kept to simplify the transition
   (since the 4.10a version is only for testing).
-  A set of identifiers has been added to trace the dataflow from
   antennas/nbi/nuclear reactions
   to
   waves/distsource/distribution
   .

.. _imp5_datastructures_updates_for_4.10a_distsource:

distsource
----------

-  Replace source_mark with the field markers of the complexType
   weighted_marker.

   Implemented: YES

-  Replace source_grid with the complexgrid based representation
   source_rate. The new representation has two fields grid and
   source_rate. *NOTE: source_grid has been kept to get a smooth
   transition to using source_rate.*

   Implemented: YES

-  The field gyrosrc_type previously appeared in several places along,
   but has now been replaced by a single field
   distsource()%source()%gyro_type.

   Fields removed: distsource()%source()%source_grid%gyrosrc_type and
   distsource()%source()%source_mark%gyrosrc_type.

   Implemented: YES

-  New element source_id for both identifying the origin of the source,
   and for identifying this source when used in distribution.

   See also the `translation table <#itm_enum_types__distsource>`__. of
   the identifier part of source_id.

   Documentation: List of identifiers for the source, in term the type
   and name of the injectors and reactions that provide the source,
   along with an index separating sources with the same name and type.
   Possible content for type: NBI or reaction names (see specifications
   on the EU-IM webpages); the field name should either be taken from
   nbi(*)%nbi_unit(*)%name, or describe the populations involved in the
   reaction, e.g. fast-thermal; the field index should separate
   different sources generated from a single injector or reaction.
   Vector(n_injectors_and_reactions)

   Background: The 4.09a version of the distsource CPO did not clearly
   stated where the source came from, i.e. it was not possible to trace
   from which NBI injector or nuclear reactions the source originated.
   For this reason the source_id has been introduced.

   Implemented: YES

-  A new complexType line_src_prof added for representating line-sources
   as profiles on a monotonic rho-coordinate. The source is described by
   its spatial location (R, Z, rho, theta) and its velocity components
   (energy, pitch, angular momentum).

   Note: Usually beamlines enters the plasma on the low field side and
   exits on the high field side. In this case the line has to be split
   into two (or more) line-sources, thus the lines-source is an array.

   Note: Primarily added to allow a simple coupling between NEMO and
   RISK

   Implemented: YES

.. _imp5_datastructures_updates_for_4.10a_distribution:

distribution
------------

-  Two new elements waves_id and source_id for both identifying the wave
   fields and sources affecting the distribution function in distri_vec.
   Documentation for wave_id: *List all waves affecting the
   distribution, as specified in waves(*)%coherentwave(*)%wave_id*

   See also the `translation table <#itm_enum_types__wave>`__ for the
   identifier part of wave_id.

   Documentation for source_id: *List all neutral beam injectors and
   reactions contributing to the source, as specified in
   distsource(*)%source(*)%source_id. Vector(n_injectors_and_reactions)*

   See also the `translation table <#itm_enum_types__distsource>`__ for
   the identifier part of source_id.

   Implemented: YES

-  Change description of distri_vec. In 4.09a distri_vec is described as
   a vector of length n_spec, which is misleading. distri_vec should be
   a vector over sources, where each source can only represent a single
   species, while one species can appear in many sources. In the new
   version distri_vec is a vector of length ndistri_vec

   Implemented: YES

-  Add new field distribution(*)%distri_vec(*)%gyro_type to separate
   gyro-centre and full orbit representations.

   Implemented: YES

-  Add new field distribution(*)%distri_vec(*)%global_param%n_particles
   for the total number of particles in the distribution

   Implemented: YES

-  Add new field distribution(*)%distri_vec(*)%profiles_1d%dens for the
   particle density of the distribution

   Implemented: YES

.. _imp5_datastructures_updates_for_4.10a_waves:

waves
-----

-  New element wave_id for both identifying the antenna driving a
   coherent-wave, and for identifying a coherent-wave when used in
   distribution and coresource. Documentation: *Identifier for the
   coherent-wave, in terms of the type and name of the antenna driving
   the wave and an index separating waves driven by the same antenna.
   Possible types: EC/LH/IC; the field name should include the name of
   the antenna as specified in either antennas(*)%ec_antenna%name,
   antennas(*)%ic_antenna%name, or antennas(*)%lh_antenna%name; the
   field index should separate different waves generated from a single
   antenna.*

   See also the `translation table <#itm_enum_types__wave>`__ for the
   identifier part of wave_id.

   Implemented: YES

-  Replace waves()%coherentwave()%local and
   waves()%coherentwave()%pol_decomp with a grid-cpo representation. The
   new representation has two fields: grid and e_components. All wave
   field components previously available in local and pol_decomp are
   available in the e_components.

   Note: waves()%coherentwave()%local and
   waves()%coherentwave()%pol_decomp are both kept to simplify the
   transition from 4.09b.

   Implemented: YES

.. _imp5_datastructures_updates_for_4.10a_antennas:

antennas
--------

-  Replace the array antenna_unit by introducing arrays of the fields
   antenna_ec, antenna_lh and antenna_ic.

   Implemented: YES

-  Suggestion: adopt for compatability with reflectometry, e.g. allowing
   modulation of the frequency.

   Implemented: NO

-  Question
   : Are the machine description fields in the
   ec_antenna
   correctly labeled, or should the machine description fields be more
   primitive/closer to the hardware parameters?

.. _imp5_datastructures_updates_for_4.10a_nbi:

nbi
---

-  Add a name for each injector unit.

   Implemented: YES

.. _imp5_datastructures_updates_for_4.10a_launchs:

launchs
-------

-  Question
   : Is this CPO needed?
-  Suggestion: Correct the name from launchs to e.g. launchers

   Implemented: NO

.. _imp5_datastructures_updates_for_4.10a_orbit:

orbit
-----

-  Question
   : Is this CPO needed?
-  Correct typo: orbit/orbitt_id; new name orbit/com

   Implemented: YES

-  Change parameter name: orb_glob_dat; new name global_param

   Implemented: YES

-  Change parameter name: orb_trace; new name trace

   Implemented: YES

-  New parameter: toroidal angle

   Implemented: YES

-  Replaced word ion with word particle throghout the documentation.

   Implemented: YES

.. _imp5_datastructures_updates_for_4.10a_utilities:

utilities
---------

-  New complexType weighted_markers added, describing an array of
   weighted markers in N-dimension. This complexType is used in both
   distsource and distribution to represent the marker representations
   of both particle source and particle distributions.

   Implemented: YES

-  New complexType enum_instant added, describing an array of weighted
   markers in N-dimension. Specifies a specific enumerated instans of an
   object or process in term of its type, name and an index. E.g. the
   input could be the wave with index=2, selected from all waves
   launched by the antenna with name=A2, where the antenna is of
   type=IC.

   Implemented: YES

10:24:57Z tjohnson $
