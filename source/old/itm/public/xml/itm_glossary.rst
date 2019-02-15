.. _itm_glossary:

Glossary
========

Collaborative Development Environment (CDE)
   A collaborative development environment (CDE) is an online meeting
   space where a software development project's stakeholders can work
   together, no matter what timezone or region they are in, to discuss,
   document, and produce project deliverables. The name was coined by
   `Grady Booch <http://en.wikipedia.org/wiki/Grady_Booch>`__.

Consistent Physical Object (CPO)
   A Consistent Physical Object (CPO) is a physics based, hierarchical
   data structure employed by the EU-IM-TF for a complete description of a
   physics area, e.g. equilibrium. All EU-IM-TF code modules interact
   through the exchange of CPOs. The CPOs also form the basic block of
   data written to the EU-IM database.

Content Management System (CMS)
   A content management system (CMS) is the collection of procedures
   used to manage work flow in a collaborative environment. These
   procedures can be manual or computer-based. The procedures are
   designed to:

   -  Allow for a large number of people to contribute to and share
      stored data
   -  Control access to data, based on user roles. User roles define
      what information each user can view or edit
   -  Aid in easy storage and retrieval of data
   -  Reduce repetitive duplicate input
   -  Improve the ease of report writing
   -  Improve communication between users

   In a CMS, data can be defined as nearly anything - documents, movies,
   pictures, phone numbers, scientific data, etc. CMSs are frequently
   used for storing, controlling, revising, semantically enriching, and
   publishing documentation.

FC2K
   FC2K is a tool for wrapping a Fortran or C++ source code into a
   Kepler actor. Before using it, your physics code should be
   EU-IM-compliant (i.e. use CPOs as input/output).

Gforge
   `Gforge <https://gforge.eufus.eu>`__ hosts all projects (software
   and infrastructure) under the EU-IM-TF.

EU-IM Gateway
   The EU-IM Gateway is a compute cluster located at Portici (near Napoli
   in Italy). It is uses for development and fusion simulations in the
   EU-IM-TF.

EU-IM Portal
   The `EU-IM Portal <https://portal.eufus.eu>`__ is the web portal for
   the EU-IM-TF, i.e. it hosts the EU-IM-TF web pages and projects under
   Gforge.

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
   when it occurs. In the EU-IM-TF, actors are usually modules which
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
   code (exp2EU-IM developed under ISIP), with the MD and DM files as
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

   -  A
      conceptual model
      consists of the observations, mathematical modelling data, and
      mathematical (e.g., partial differential) equations that describe
      the physical system. It will also include initial and boundary
      conditions.
   -  The
      computational model
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
   The process of determining the degree to which a model is an accurate
   representation of the real world from the perspective of the intended
   uses of the model.

verification
   The process of determining that a model implementation accurately
   represents the developer's conceptual description of the model and
   the solution to the model.

