.. _world_itm_approach:

The European Integrated Modelling (EU-IM) approach
==================================================

The choice of Integrated Modelling made by the former EFDA EU-IM-TF and
pursued now under EUROfusion WPCD is unique and original: it entails the
development of a comprehensive and completely generic tokamak simulator
including both the physics and the machine, which can be applied for any
fusion device. The simulation platform was designed to be fully modular,
flexible, and independent of a programming language. The choice of
modularity implies that each module contains a single physical model and
that the communication between the modules is standardised: a set of
common rules (ontology) clearly specify the format of the data to be
consistently exchanged between modules (data-structure). The complexity
of coupling the codes together is therefore transferred to the
definition of a generic data-structure (allowing to describe and
exchange information concerning both physical quantities and technical
objects, not assuming the origin of those), extensible to allow the
integration of new physics, as well as more elaborate machine geometries
and experimental data in the future. A central project is the
development of the so-called
European Transport Simulator (ETS)
aimed to meet all the EU-IM requirements, namely modularity, flexibility
and standardized interfaces. In terms of the physics, the ETS is
designed to solve the standard set of one-dimensional time dependent
equations which describe the evolution of the core plasma. The solver
itself is designed with a modular approach enabling the separation of
the physics from the numerics, thereby facilitating the testing/usage of
the numerical schemes that best suit a particular physical simulation.
