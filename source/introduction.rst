.. _world_wpcd_structure:

=========================================================
Introduction to Code Development for integrated modelling
=========================================================

The EUROfusion Project on Code Development for Integrated Modelling (WP-CD)
supports the achievement of the European Fusion Roadmap at Horizon 2020
goals, via the development of existing modelling codes with a particular
focus on integrated modelling. The primary objectives of WPCD are: 1.
Provide a suite of codes that can be validated on existing machines and
used for JT-60SA, ITER and DEMO predictions:

-  build on the existing modelling codes developed by the EUROfusion
   Consortium members including the Integrated Modelling (EU-IM)
   infrastructure, toolset and codes developed under the former EFDA EU-IM
   Task Force,
-  add new physics to the existing models
-  couple codes into integrated workflows
-  optimize codes.

2. Specific ITER simulation work in support of ITER IO and F4E with
specified deliverables. WPCD operates under a work plan aiming to provide
in the long term a full suite of integrated simulation workflows,
incorporating core-edge-SOL/PFC coupling, first-principles models and
control elements. A central task is the development of the new modular
European Transport Simulator, ETS, which is being deployed to JET modelling
infrastructure for validation and application to experimental analysis. In
addition to code and workflow development, rigorous code verification is
also performed under WPCD, within the EU-IM framework; whereas validation
of the released integrated modelling workflows against the experiments is
performed under the rerelated Task Forces. `EUROfusion WPCD webpage
<https://users.euro-fusion.org/iterphysicswiki/index.php/Main_Page/>`__.
The EU-IM Team includes both EUROfusion WPCD and WPISA CPT contributors,
see `EU-IM Team <http://www.euro-fusionscipub.org/eu-im/>`__. This list
reproduces the status of members in 2015 and is possibly not exhaustive.

.. _world_itm_approach:

The European Integrated Modelling (EU-IM) approach
==================================================

The choice of Integrated Modelling made by the former EFDA EU-IM and
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

Structure
=========

The EFDA EU-IM was structured into four Integrated Modelling Projects
(IMPs) focusing on the following physics areas:

-  **IMP12**
   plasma equilibrium and MHD
-  **IMP3**
   transport code and whole discharge evolution
-  **IMP4**
   transport and micro-instabilities
-  **IMP5**
   heating, current drive (H&CD) and fast particles

The "Infrastructure and Software Integration Project" (**ISIP**) was in
charge of developing, maintaining and operating the code platform structure
and implementing the EU-IM data-structure. A key function of ISIP was to
provide infrastructure support to the IMPs. At present, under EUROfusion,
this expertise and tasks are ensured by the **Core Programming Team** under
the **Infrastructure and Support Activities Work Package (WP-ISA CPT)**.
Two further projects ensured the link with the experimentalists and the
provision of the experimental databases:

-  **AMNS**
   the "Atomic, Molecular, Nuclear Surface" Data
-  **EDRG**
   "Experimentalists and Diagnosticians Resource Group"

The "ITER Scenario Modelling Working Group" (**ISM**) was established in
2007 as part of EU-IM with the aim to assist in systematic predictive
modelling of all ITER reference scenarios by using the major existing
integrated modelling tools, whilst the EU-IM code platform was in
development. ISM also supported the verification and validation of the ETS,
which aims to become the main tool for EU modelling activity.

.. _world_itm_contributors:

Contributors
============

EU-IM contributors are defined in the Appendix of G.L. Falchetto et
al., Nuclear Fusion 54,043018, 2014. This list reproduces the status of
EU-IM members in 2012 and is not exhaustive. A grateful thank you to
all those who contributed and promoted EU-IM since its beginnigs.

.. _world_itm_publications:

.. ITM Publications
   ================

   Journals
   --------

   1.  G.L. Falchetto et al., ITM-TF contributors and JET-EFDA
    Contributors, The European Integrated Tokamak Modelling (ITM)
    Effort: Achievements and First Physics Results. Nuclear Fusion
    54,043018, 2014.
    2.  Coelho, R., et al.,Synthetic diagnostics in the EU-ITM simulation
    platform, 7th Workshop on Fusion Data Processing Validation and
    Analysis, Frascati (IT), March 2012; Fusion Science and Technology
    63(1), 1-8, 2013.
    3.  O. Sauter and S. Yu. Medvedev, Tokamak Coordinate conventions:
    COCOS, Computer Phys. Commun. 184, 293 (2013)
    4.  Y. Frauel, et al., Easy use of high performance computers for fusion
    simulations. Fusion Engineering and Design, in press, 2012.
    5.  D.P. Coster, V. Basiuk, G. Pereverzev, D. Kalupin, R. Zagorksi, R.
    Stankiewicz, P. Huynh, F. Imbeaux, et al, “The European Transport
    Solver”, IEEE Transactions on Plasma Science 38 (9), 2085 (2010) .
    6.  F. Imbeaux, J.B. Lister, G.T.A. Huysmans, W. Zwingmann, et al.,"A
    generic data structure for integrated modelling of tokamak physics
    and subsystems". Computer Physics Communications, Volume 181, Issue
    6, June 2010, Pages 987-998
    7.  B. Guillerminet, F. Iannone, F. Imbeaux, G. Manduchi, A.
    Maslennikov, V. Pais, P. Strand, Gateway: New high performance
    computing facility for EFDA task force on integrated Tokamak
    modelling, Proceedings of the 7th IAEA Technical Meeting on Control,
    Data Acquisition, and Remote Participation for Fusion Research,
    Fusion Engineering and Design Volume 85, Issues 3-4, July 2010,
    Pages 410-414
    8.  D. Tskhakaya, A. Soba, R. Schneider, M. Borchardt, E. Yurtesen, J.
    Westerholm, PIC/MC code BIT1 for plasma simulations on HPC, 18th
    Euromicro International Conference on Parallel, Distributed and
    Network-Based Processing (PDP), IEEE Conference Publications,
    Page(s): 476 - 481 (2010)
    9.  A. Cardinali et al., “Minority heating by ICRH: a tool for
    investigating burning plasma physics in FAST”, Nuclear Fusion,
    49:095020, 2009.
    10. V. Kotov, D. Reiter, Two-point analysis of the numerical modelling
    of detached divertor plasmas, Plasma Phys. Control. Fusion, 51
    (2009) 115002.
    11. V. Kotov, D. Reiter, D.P .Coster and A.S. Kukushkin, 12th
    International Workshop on Plasma Edge Theory in Fusion Devices,
    September 2009, Rostov, Russia, Contributions to Plasma Physics 50
    (3-5), 292, 2010
    12. E.Lazzaro and S. Nowak, ECCD control of dynamics of asymmetric
    magnetic islands in a sheared flow, Plasma Phys. Control. Fusion 51
    (2009) 035005
    13. V. Parail, P. Belo, P. Boerner, X. Bonnin et al.,Integrated
    modelling of ITER reference scenarios, Nuclear Fusion 49 (2009)
    075030.
    14. G. Vlad et al., “Particle simulation of energetic particle driven
    Alfvén modes in NBI heated DIII-D experiments”, Nuclear Fusion,
    49:075024, 2009.
    15. J. Zaleśny et al., “Mechanical analogy of the nonlinear dynamics of
    a driven unstable mode near marginal stability”, Physics of Plasmas
    16, 022110 (2009).
    16. G.L. Falchetto, B.D. Scott, P. Angelino, A. Bottino, T. Dannert, V.
    Grandgirard, S. Janhunen, F. Jenko, S. Jolliet, A. Kendl, B.F.
    McMillan, V. Naulin, A.H. Nielsen, M. Ottaviani, A.G. Peeters, M.J.
    Pueschel, D. Reiser, T.T. Ribeiro and M. Romanelli "The European
    turbulence code benchmarking effort: Turbulence driven by thermal
    gradients in magnetically confined plasmas". Plasma Phys. Control.
    Fusion 50, 124015 (2008).

.. Conference Papers
   -----------------

   1.  G.L. Falchetto, D. Coster , R. Coelho, et al. ITM-TF contributors
    and JET-EFDA Contributors,
    The European Integrated Tokamak Modelling (ITM) Effort: Achievements
    and First Physics Results
    439-TH/P2-25, to appear in Proceedings of the 24th IAEA Fusion
    Energy Conference (FEC 2012), San Diego, US.
    poster
    2.  D. Kalupin, V. Basiuk, D. Coster, et al. ITM-TF contributors and
    JET-EFDA Contributors,
    The European Transport Solver: an integrated approach for transport
    simulations in the plasma core
    4-TH/P2-01, to appear in Proceedings of the 24th IAEA Fusion Energy
    Conference (FEC 2012), San Diego, US.
    poster
    3.  X. Litaudon, I. Voitsekhovitch et al. and the EU-ITM ITER Scenario
    Modelling group,
    Modelling of Hybrid Scenario: from present-day experiments towards
    ITER
    , TH/P2-05, to appear in Proceedings of the 24th IAEA Fusion Energy
    Conference (FEC 2012), San Diego, US.
    poster
    4.  COSTER, D.P., KLINGSHIRN, H.-J., et al.,Core-Edge Coupling:
    developments within the EFDA Task Force on Integrated Tokamak
    Modelling, P1.073, 39th EPS Conference on Plasma Physics& 16th Int.
    Congress on Plasma Physics, Stockholm 2012.
    5.  ÄKÄSLOMPOLO, S., et al., Preparing tokamak 3D wall and magnetic data
    for particle tracing simulations, P5.058, 39th European Physical
    Society Conference on Plasma Physics, Stockholm 2012.
    6.  FIGINI, L., et al.,Benchmarking of electron cyclotron heating and
    current drive codes on ITER scenarios within the European Integrated
    Tokamak Modelling framework, in European Physical Journal Web of
    Conferences, proceedings of EC-17 - 17th Joint Workshop on Electron
    Cyclotron Emission and Electron Cyclotron Resonance Heating (Deurne,
    The Netherlands, 7 - 11 May 2012).
    7.  KONZ, C., et al, First physics applications of the Integrated
    Tokamak Modelling (ITM-TF) tools to the MHD stability analysis of
    experimental data and ITER scenarios, O2.103, 38th EPS Conference on
    Plasma Physics, Strasbourg 2011. In Europhysics Conference Abstracts
    Vol. 35G, ISBN 2-914771-68-1.
    8.  KONZ, C., et al, Scientific Workflows for the Linear MHD Stability
    Analysis Chain, P4-137, 37th EPS Conference on Plasma Physics,
    Dublin 2010.
    9.  ZWINGMANN, W., et al, Validation Procedure of the Tokamak
    Equilibrium Reconstruction Code EQUAL with a Scientific Workflow
    System, P4-180, 37th EPS Conference on Plasma Physics, Dublin 2010.
    10. D. Tskhakaya, S. Jachmich and JET-EFDA Contributors, Interpretation
    of divertor Langmuir probe measurements during the ELMs at
    JET,P2-72, PSI conference, San Diego 2010.
    11. New Information Processing Methods for Control in Fusion - A.
    Murari, J. Vega, D. Mazon, G.A. Rattá, J. Svensson, G. Vagliasindi,
    J. Blum, C. Boulbe, B. Faugeras and JET EFDA contributors -
    Proceedings of the 7th Technical Meeting on Control, Data
    Acquisition and Remote Participation for Fusion Research –
    Aix-en-Provence – France – 2009
    12. I.M. Ivanova-Stanik, D. Kalupin, R. Stankiewicz, M. Tokar,
    R.Zagórski, “Verification and Benchmarking of the Impurity Transport
    Solver”, presented at ICNSP-2009 in Lisbon and submitted to IEEE
    Transactions on Plasma Science.
    13. R. Stankiewicz, D. Coster, A. Figueiredo, D. Kalupin, G.Pereverzev,
    M. Tokar, D. Twaróg, R.Zagórski, “Verification of the European
    Transport Solver for Transport Barriers”, presented at ICNSP-2009 in
    Lisbon and submitted to IEEE Transactions on Plasma Science.
    14. Development of a 2D full-wave JE-FDTD Maxwell X-mode code for
    reflectometry simulation, F. da Silva, S. Heuraux, T. Ribeiro, B.
    Scott, Proc. 9th Intl. Reflectometry Workshop - IRW9 (Lisboa, May
    2009), IPFN Report (nr), URL:
    http://www.ipfn.ist.utl.pt/irw9/proceedings.html
    15. C.V. Atanasiu, A. Moraru, L.E. Zakharov, “Response of a resistive
    wall with holes to an external kink mode in a tokamak”, 21st
    International Conference on Numerical Simulation of Plasmas, Lisbon,
    Portugal, 6-9 October 2009.
    16. C.V. Atanasiu, A. Moraru, L.E. Zakharov, “Influence of a Nonuniform
    Resistive Wall on the RWM Stability in a Tokamak”, American Physical
    Society Plasma Meeting, Atlanta, USA, 2-6 November 2009.
    17. A. Cardinali et al., Minority heating by ICRH: a tool for
    investigating burning plasma physics in FAST. In RADIO FREQUENCY
    POWER IN PLASMAS: Proceedings of the 18th Topical Conference. Gent
    (Belgium), 2426 June 2009, AIP Conference Proceedings 1187, pages
    101–104, 2009
    18. B.Guillerminet et al, High Performance Computing tools for the
    Integrated Tokamak Modelling project, Proceedings of the 7th IAEA
    Technical Meeting on Control, Data Acquisition, and Remote
    Participation for Fusion Research Aix-en-Provence, France, June
    2009. Fusion Engineering and Design 85 (3) July 2010, Page 388
    19. G.M.D. Hogeweij et al, EPS, 35th Conf on Plasma Physics ,
    Hersonissos, Crete, Greece;
    20. J. Höök et al., An adaptive df Monte Carlo method at the 21st
    International Conference on Numerical Simulation 2009, Lisbon,
    Portugal, October 6-9, 2009.
    21. P. Lauber et al., Low frequency kinetic Alfvén Eigenmodes at
    ASDEX-Upgrade. Oral OT-13, 11th IAEA TM on Energetic Particles in
    Magnetic Confinement Systems, Kyiv 21-23 Sept. 2009, pages P–25,
    Vienna, Austria, 2009. IAEA.
    22. Lazzaro E., Nowak S., Cirant S., Coelho R., Buratti P. and JET-EFDA
    Contributors, Rotation and stability of magnetic island in
    neoclassical viscous regimes, Proc. 36nd EPS Conference on Plasma
    Physics (EPS 2009), June 29th - July 03rd 2009, Sofia, Bulgaria
    23. D. Mazon, J. Blum, C. Boulbe, B. Faugeras, M. Baruzzo, A. Boboc, S.
    Bremond, M. Brix, P. DeVries, S. Sharapov, L. Zabeo, Equinox: a real
    time equilibrium code and its validation at JET, proceedings of the
    4th International Scientific Conference on Physics and Control –
    Catania – Italy - 2009
    24. D. Mazon, J. Blum, C. Boulbe, B. Faugeras, A. Boboc, M. Brix, P. De
    Vries, S. Sharapov, L. Zabeo – Real-time identification of the
    current density profile in the JET Tokamak: method and validation -
    2009 - proceedings of the 48th IEEE Conference on Decision and
    Control – Shangai – Chinese – 2009
    25. Lunt et al, EPS-Sofia, 2009.
    26. Q. Mukhtar et al., Solving Singular Diffusion Equations with Monte
    Carlo Method at the 21st International Conference on Numerical
    Simulation 2009, Lisbon, Portugal, October 6-9, 2009.
    27. V. Parail et al., 22nd IAEA Fusion Energy Conference, Geneva,
    Switzerland.
    28. F. Saint-Laurent, B. Faugeras, C. Boulbe, S. Bremond, P. Moreau, J.
    Blum - Plasma position control and current profile reconstruction
    for Tokamaks - ICALEPCS Conference – Kobe - Japon – 2009
    29. Scott B., “Towards understanding of the L-H transition in tokamaks,
    JET Task Force T Workshop, February 15-17 2010. Includes the two
    main workflow results.
    30. J. Signoret, F. Imbeaux, A generic access to shot-based data of
    European Tokamaks, poster presented at the 10th IAEA TM on 2009 on
    Control, Data Acquisition and Remote Participation, Aix-en-Provence,
    France, June 2009.
    31. P.Strand, B. Guillerminet, F. Imbeaux, R. Coelho, D. Coster, L-G
    Eriksson, F. Iannone, G. Manduchi, I. Campos, M. Haefele, E.
    Sonnedrücker, A. Jackson, J. Westerholm, M. Plociennik and M.
    Owsiak. A European infrastructure for Fusion Simulations.
    Proceedings of the The 18th Euromicro International Conference on
    Parallel, Distributed and Network-Based Computing
    32. P. Strand, R. Coelho, D. Coster, L-G,.Eriksson, F. Imbeaux, B.
    Guillerminet, F. Iannone, and contributors to the EFDA ITM-TF work
    programme and the EUFORIA project, Simulation high performance
    computing– building a predictive capability for Fusion, IAEA TM 2009
    on Control, Data Acquisition and Remote Participation,
    Aix-en-Provence, France, June 2009, Fusion Engineering and Design 85
    (2010), pp. 633-636
    33. C. Di Troia et al., Investigation of burning plasma physics by ICRH
    minority acceleration in FAST. In 11.th Easter Plasma Meeting, April
    14-17, 2009, Villa Gualino, Torino, Italy
    34. C. Di Troia et al., Collective behaviors of fast ion accelerated by
    Ion Cyclotron Resonance. In 36th EPS Conference on Plasma Phys.
    Sofia, June 29 - July 3, 2009, volume ECA 33E, pages P–2.195.
    European Physical Society, 2009.
    35. G. Vlad et al., Toward a new hybrid MHD gyrokinetic code: Progresses
    and perspectives. Poster P–25, 11th IAEA TM on Energetic Particles
    in Magnetic Confinement Systems, Kyiv 21-23 Sept. 2009, Vienna,
    Austria, 2009. IAEA.

.. _world_itm_presentations:

.. ITM Overview and Invited Talks
    ==============================

    2011
    ----

    -  KONZ, C., et al, First physics applications of the Integrated Tokamak
       Modelling (ITM-TF) tools to the MHD stability analysis of
       experimental data and ITER scenarios, O2.103, 38th EPS Conference on
       Plasma Physics, Strasbourg 2011.


       2010
       ----

       -  Overview of the European Integrated Tokamak Modelling Task Force
          (EU-US Workshop on Software Technologies for Integrated Modelling,
          Gothenburg, 2010-12-01 -- 2010-12-03)

          2009
          ----

          - Fusion, EFDA, ITM and EUFORIA Presented at the "Grids and
             e-Science 2009 Advanced Workshop on the future and
             sustainability of production Grids" (15-19 June 2009)
          - Plasma Physics: Scientific and Computational Challenges:
             Fusion, EFDA, ITM and EUFORIA Presented at "Grid Computing: a
             new tool for Science and Innovation - IX International
             Conference on Science, Arts and Culture - ECSAC, Losinj
             Croatia" (2009-08)
          -  Scientific Workflows in Fusion: EUFORIA & EFDA-TF-ITM
             Presented at "ParCo2009, International Conference on Parallel
             Computing 1-4 September 2009, École Normale Supérieure de Lyon, Lyon,
                France"

           2008
           ----

           - The European turbulence code cross-verification effort:
             turbulence driven by thermal gradients in magnetically
             confined plasmas presented at EPS 2008 by G. Falchetto -
             on behalf of EFDA-TF-ITM-IMP#4

.. _itm_glossary:

Glossary
========

Collaborative Development Environment (CDE)
A **collaborative development
environment (CDE)** is an online meeting space where a software development
project's stakeholders can work together, no matter what timezone or region
they are in, to discuss, document , and produce project deliverables. The name was coined by `Grady Booch <http://en.wikipedia.org/wiki/Grady_Booch>`__.
 
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
   The EU-IM Gateway is a compute cluster located at Portici (near
   Napoli in Italy). It is uses for development and fusion simulations in
   the EU-IM.

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
   
.. _world_itm_external_links:

Links to related external projects
==================================

-  `EUFORIA Project <http://www.euforia-project.eu/EUFORIA/>`__
-  `MAPPER Project <http://www.mapper-project.eu/>`__
-  `EFDA High Level Support Team (HLST) <https://www.efda-hlst.eu/>`__
-  `EFDA Goal Oriented Training in Theory (GOTiT) <https://solps-mdsplus.aug.ipp.mpg.de/GOTiT/>`__

