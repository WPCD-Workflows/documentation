.. _world_wpcd_structure:

================================================================================
Introduction to the EUROfusion Project Code Development for integrated modelling
================================================================================

The EUROfusion Project on Code Development for Integrated Modelling (WP-CD)
supports the achievement of the European Fusion Roadmap at Horizon 2020
goals, via the development of existing modelling codes with a particular
focus on integrated modelling. The primary objectives of WPCD are: 

1. Provide a suite of codes that can be validated on existing Tokamaks and
   used for JT-60SA, ITER and DEMO predictions:

   -  build on the existing modelling codes developed by the EUROfusion
      Consortium members including the Integrated Modelling (EU-IM)
      infrastructure, toolset and codes developed under the former EFDA ITM
      Task Force,
   -  add new physics to the existing models
   -  couple codes into integrated workflows
   -  optimize codes.

2. Specific ITER simulation work in support of ITER IO and F4E with
   specified deliverables.

WPCD operates under a work plan aiming to provide in the long term a full
suite of integrated simulation workflows, incorporating core-edge-SOL/PFC
coupling, first-principles models and control elements. A central task is
the development of the modular European Transport Simulator, ETS, which is
being deployed to JET and MST modelling infrastructures for validation and
application to experimental analysis.

In addition to code and workflow development, rigorous code verification is
also performed under WPCD, within the EU-IM framework; whereas validation
of the released integrated modelling workflows against the experiments is
performed under WPJET1 and WPMST1.

The Work Package run as a project and managed by a project leader (M.
Romanelli, UKAEA, michele.romanelli@ukaea.uk)

In 2019 the structure of the project has been reviewed and changed.

The project is now organised into three coordinated areas or subprojects
reflecting the present priorities: Enabling Workflow Exploitation, Workflow
Development, Workflow adaptation to IMAS. The Enabling Workflow
Exploitation Area (EWE) will coordinate the development of pre-processing
tools for the routine use of ETS and the equilibrium-MHD-stability workflow
in EUROfusion facilities, the development of visualization tools, synthetic
diagnostics and the provision of training to users. The Workflow
Development Area or subproject will coordinate the continuous development
of existing and new workflows in IMAS addressing specific modelling needs
of the other EUROfusion work packages. The Workflow adaptation to IMAS Area
will operate in strong collaboration with ITER IO and will ensure the
complete adaptation of existing workflows to IMAS using the most updated
Data Dictionary.

.. _eu_im_approach:

The European Integrated Modelling (EU-IM) approach
==================================================

The choice of Integrated Modelling made by the former EFDA ITM and
pursued now under EUROfusion WPCD is unique and original: it entails the
development of a comprehensive and completely generic tokamak simulator
including both the physics and the machine, which can be applied for any
fusion device. The simulation platform was designed to be fully modular,
flexible, and independent of a programming language.The choice of
modularity implies that each module contains a single physical model and
that the communication between the modules is standardised: a set of common
common rules (ontology) clearly specify the format of the data to be
consistently exchanged between modules (data-structure). The complexity of
coupling the codes together is therefore transferred to the definition of a
generic data-structure (allowing to describe and exchange information
concerning both physical quantities and technical objects, not assuming the
origin of those), extensible to allow the integration of new physics, as
well as more elaborate machine geometries and experimental data in the
future. A central project is the development of the so-called **European
Transport Simulator (ETS)** aimed to meet all the EU-IM requirements,
namely modularity, flexibility and standardized interfaces. In terms of the
physics, the ETS is designed to solve the standard set of one-dimensional
time dependent equations which describe the evolution of the core plasma.
The solver itself is designed with a modular approach enabling the
separation of the physics from the numerics, thereby facilitating the
testing/usage of the numerical schemes that best suit a particular physical
simulation.

.. _world_itm_mission:

Mission
========

The EU-IM operated under EFDA from 2004 until 2013. The main mission of
EU-IM was to provide a software infrastructure framework for EU
integrated modelling activities as well as a validated suite of
simulation codes for the modelling of present experiments, ITER and DEMO
plasmas. The EU-IM operated until 2013 under a work programme
formulated to support this goal, structuring the EU modelling effort
around existing experiments and ITER scenario prediction while
maintaining a long term strategic aim to provide a validated set of
European modelling tools for ITER exploitation.

.. _world_itm_achievements:

Achievements
============

During the first phase of the EU-IM, surveys and cross-verification of the
available European models and numerical codes were performed within the
individual IMPs and the data-structure was extensively discussed and
defined. Equilibrium, linear MHD stability, core transport and RF wave
propagation, as well as the poloidal field systems and a few diagnostics
were the first topics addressed. Data structures have been finalised for
these and then expanded to address, among others, non-linear MHD, edge
physics, turbulence and neutral beam propagation. In parallel to the
development of the physics concepts, EU-IM developed the tools to
manipulate the data structure and use it in fully flexible and modular
simulation workflows. The EU-IM database contains machine descriptions from
JET, Tore Supra, MAST, FTU, FAST, AUG, ITER as well as some experimental
data from Tore Supra and JET. The EU-IM futher achieved the development of
the first release version of a fully modular and versatile simulator, the
ETS, with all the essential functionalities. The validation of the ETS
simualtor started in 2010 against the state-of-the-art transport codes and
ETS now starts to be used for the first physics applications. Next steps
are the validation of the simulator for a complete discharge on existing
experimental data with the available modules, the integration of more
quantitative physics models ("ab-initio") and the integration of the whole
modelling of the device. Some posters that describe the EU-IM were presented
at an ITM EXPO at the 2011 EPS fusion conference in Strasbourg.

.. _world_itm_structure:

Contributors
============

EU-IM contributors are defined in the Appendix of G.L. Falchetto et
al., Nuclear Fusion 54,043018, 2014. This list reproduces the status of
EU-IM members in 2012 and is not exhaustive. A grateful thank you to
all those who contributed and promoted EU-IM since its beginnigs.


.. _itm_glossary:

Glossary
========

Collaborative Development Environment (CDE)
A **collaborative development
environment (CDE)** is an online meeting space where a software development
project's stakeholders can work together, no matter what timezone or region
they are in, to discuss, document , and produce project deliverables. 
The name was coined by `Grady Booch <http://en.wikipedia.org/wiki/Grady_Booch>`_.
 
Consistent Physical Object (CPO)
   A Consistent Physical Object (CPO) is a
   physics based, hierarchical data structure employed by the EU-IM for a
   complete description of a physics area, e.g. equilibrium. All EU-IM code
   modules interact through the exchange of CPOs. The CPOs also form the
   basic block of data written to the EU-IM database.

Content Management System (CMS)
   A **content management system (CMS)** is
   the collection of procedures used to manage work flow in a collaborative
   environment. These procedures can be manual or computer-based. The
   procedures are designed to:

   - Allow for a large number of people to contribute to and share stored
     data
   - Control access to data, based on user roles. User roles define what
     information each user can view or edit
   - Aid in easy storage and retrieval of data
   - Reduce repetitive duplicate input
   - Improve the ease of report writing
   - Improve communication between usersq

   In a CMS, data can be defined as nearly anything - documents, movies,
   pictures, phone numbers, scientific data, etc. CMSs are frequently used
   for storing, controlling, revising, semantically enriching, and
   publishing documentation.

FC2K
   FC2K is a tool for wrapping a Fortran or C++ source code into a Kepler
   actor. Before using it, your physics code should be EU-IM-compliant (i.e.
   use CPOs as input/output).

Gforge
  `Gforge <https://gforge6.eufus.eu>`__ hosts all projects (software and infrastructure) under the EU-IM.

EU-IM Gateway
   The EU-IM Gateway is a computer cluster presently hosted at CINECA, Bologna, Italy. 
   It is used for development and fusion simulations in the EU-IM.

EU-IM Portal
   The `EU-IM Portal
   <https://portal.eufus.eu/idp/login.php?sp=itm&tok=TeqwPv9>`__ is the web
   portal for the EU-IM, i.e. it hosts the EU-IM web pages and projects
   under Gforge.

Integrated Simulation Editor (ISE)
   The Integrated Simulation Editor ISE allows you to visualize and edit
   data from an EU-IM database entry. It also allows running a Kepler
   workflow based on the opened data entry.

Universal Access Layer (UAL)
   The UAL (Universal Access Layer) is a multi-language library that
   allows exchanging Consistent Physical Objects (CPOs) between various
   modules, and to write to an EU-IM database.

actor
   Actors take execution instructions from a director. In other words,
   actors specify what processing occurs while the director specifies
   when it occurs. In the EU-IM, actors are usually modules which
   contain physics codes like EQUAL or HELENA.

calibration
   The process of adjusting numerical or physical modelling parameters
   in the computational model for the purpose of improving agreement
   with experimental data.

data mapping
   An XML file containing all the mapping essentials for mapping from a
   local experimental database for a specific tokamak device to the EU-IM
   database. The mapping essentials include for instance the download
   method, local signal names, gains and offsets, time base, and
   eventual interpolation option to ensure that only one time base is
   set for each CPO that is built from multiple local signals. A java
   code (exp2ITM developed under ISIP), with the MD and DM files as
   inputs, is then run to connect to the local device database, retrieve
   the required experimental data and populate the EU-IM database instance
   for that shot/device and dataversion.

director
   A director controls (or directs) the execution of a workflow, just as
   a film director oversees a cast and crew.

error
   A recognisable deficiency in any phase or activity of modelling and
   simulation that is not due to lack of knowledge.

kepler
   Kepler is a software application for the analysis and modeling of
   scientific data. Kepler simplifies the effort required to create
   executable models by using a visual representation of these
   processes. These representations, or "scientific workflows", display
   the flow of data among discrete analysis and modeling components.

machine description
   The machine description (MD) of a device basically builds on the set
   of engineering and diagnostic settings characterising a tokamak
   device. This includes, for instance, the vessel/limiter description,
   the PF coils and circuiting and lines of sight of diagnostics. In
   practice, all MD information is encapsulated in an XML file that
   emanates from the MD tagged datastructure schemas. An MD instance of
   a given device is then stored into the EU-IM database as shot 0 for
   that device database.

model
   A representation of a physical system or process intended to enhance
   our ability to understand, predict, or control its behaviour.

   -  A **conceptual model**
      consists of the observations, mathematical modelling data, and
      mathematical (e.g., partial differential) equations that describe
      the physical system. It will also include initial and boundary
      conditions.
   -  The **computational model**
      is the computer program or code that implements the conceptual
      model. It includes the algorithms and iterative strategies.
      Parameters for the computational model include the number of grid
      points, algorithm inputs, and similar parameters, etc.

modelling
   The process of construction or modification of a model

prediction
   Use of a model to foretell the state of a physical system under
   conditions for which the model has not been validated.

simulation
   The exercise or use of a model.

uncertainty
   A potential deficiency in any phase or activity of the modelling
   process that is due to the lack of knowledge.

validation
   The process of determining the degree to which a model is an
   accurate representation of the real world form the perspective of the
   intended uses of the model.

verification
   The process of determining that a model implementation
   accurately represents the developer's conceptual description of the model
   and the solution to the model. 
   

