###############################################
Turbulence with synthetic diagnostics workflows
###############################################
The turbulence with synthetic diagnostics workflows consist of the HESEL and RENATE actors for turbulence simulation and synthetic diagnostics.

*******************
HESEL Documentation
*******************
The HESEL code is a numerical solver for the set of equations that describe the HESEL model. The HESEL model is a drift-reduced Braginskii type of two-fluid model for electron density, electron and ion pressures, and E-cross-B vorticity of a quasi-neutral plasma. The domain is a 2D slab perpendicular to the magnetic field line located at the outboard-midplane of a tokamak. The slab domain covers parts of the turbulent edge and SOL regions.

.. table:: 
   :align: center

   +-----------------------------------------+------------------------------------------------+
   | .. figure:: images/hesel_location.png   |  .. figure:: images/hesel_domain.png           |
   +-----------------------------------------+------------------------------------------------+
   |The HESEL 2D slab domain. Images from A.H. Nielsen *et al 2019 Nucl. Fusion* **59** 086059|
   +------------------------------------------------------------------------------------------+
    
The solutions typically show the development of filaments (blobs) near the last-closed-flux-surface. The filaments propagate radially outwards through the SOL region, and carry heat and paticles away from the confined edge region.

.. table:: 
   :align: center
   
   +--------------------------------------------------+
   | .. figure:: images/hesel_simulation.png          |
   +--------------------------------------------------+
   |Snapshot of solution fields for HESEL simulation  |
   +--------------------------------------------------+

There are plenty of publications in scientific journals based on HESEL (and its precessor ESEL) simulation data, in which the model equations are also described in detail. Below is listed a selected set of publications:

* `Study of power width scaling in scrape-off layer with 2D electrostatic turbulence code based on EAST L-mode discharges <https://doi.org/10.1063/1.5083063>`_
* `Synthetic Edge and SOL Diagnostics: A Bridge between Experiments and Theory <https://doi.org/10.1088/1741-4326/ab1954>`_
* `ExB mean flows in finite ion temperature plasmas <https://doi.org/10.1063/1.4985329>`_
* `Numerical simulations of blobs with ion dynamics <https://doi.org/10.1088/1361-6587/59/2/025012>`_

The HESEL code structure and how to run it as a stand alone code is described in :ref:`HESEL as stand-alone`, the workflow wrapper documentation is described in :ref:`HESEL as workflow actor`, and a guide on how to include HESEL in the KEPLER workflow is given in :ref:`HESEL in the KEPLER workflow`.

.. _HESEL as stand-alone:

====================
HESEL as stand-alone
====================
HESEL can be run outside the workflow as a stand-alone code, where input are read from an input file and, optionally, from experimental data profiles. The output data are stored in a HDF5 datafile.

Obtaining and building HESEL
============================
The HESEL source code is currenty maintained in a private Github repository (C-HESEL). For obtaining the source code please request access from ahnie@fysik.dtu.dk.

The following recipe describes how to load and build HESEL on the EUROfusion Gateway infrastructure.

On the Gateway first make sure the required modules are loaded. This can be assured by
::

    module purge
    module load cineca
    module load imasenv
    imasdb AUG
    module unload hdf5
    module load hdf5/1.8.17--intelmpi--2017--binary

For future convenience the above code block can be added to the `~/.login` file and, if it does not load upon login, executed by :code:`source ~/.login`.

Navigate to your Gateway public directory :code:`cd ~/public` and clone the C-HESEL repository from GitHub
::

    git clone https://github.com/PPFE-Turbulence/C-HESEL.git

Navigate into the C-HESEL directory :code:`cd C-HESEL` and checkout the `develop` branch to work with the most recent updates
::

    git checkout develop

Navigate into the FUTILS source directory :code:`cd FUTILS_version2.2/src` and return
::

    make clean && make -f Makefile.gateway

Navigate back to C-HESEL :code:`cd ../..` and return
::

    make clean && make esel

Everything is now set up for you to run HESEL, which is located in `C-HESEL/bin/esel.marconi.A3`.

.. _HESEL input:

HESEL input
================
The stand-alone version of HESEL can be run either entirely from an input file, or in a setup where the initial density and temperature fields are read from an additional datafile. The probe positions for synthetic diagnogstics probes are provided in a separate datafile. All input files must be  located in the same directory.

HESEL input
----------------
The HESEL input is read from a plain text file, with the input variables separated by line breaks. An example of an input file is given  :download:`here <static/hesel_input>`. The main variables are

============  ========  ==============
  Variable      Unit      Decription
============  ========  ==============
codenametype            Machine identifier
shot_no                 Experiment shot number
run_no                  Simulation run number
nx                      Number of spatial grid points in x direction
ny                      Number of spatial grid points in y direction
xmin           rhos     Minimum x-axis limit
xmax           rhos     Maximum x-axis limit
ymin           rhos     Minimum y-axis limit
ymax           rhos     Maximum y-axis limit
dt             oci^-1   Value of discrete timestep
end_time       oci^-1   Duration of simulation
out_time       oci^-1   Time between small outputs
outmult                 Number of small outputs before full fields are written out
edge           rhos     Width of edge region
SOL            rhos     Width of SOL region
wall           rhos     Width of wall region
n0             m^-3     Electron density at last closed flux surface
te0            eV       Electron temperature at last closed flux surface
ti0            eV       Ion temperature at last closed flux surface
Mp             eV       Parallel Mach number
A                       Mass number
Z                       Charge number
Zeff                    Effective charge
q                       Safety factor at last closed flux surface
B0             T        Magnetic field on axis
r0             m        Minor radius
R0             m        Major radius
Lp             m        Parallel connection length in the SOL region
Lpwall         m        Parallel connection length in the wall shadow region
============  ========  ==============

The remaining variables in the input file are better left unchanged.

=====================  =================
  Variable               Default value
=====================  =================
coordsys               0
gamma                  0.00
sigma                  0.00
bprof                  1.0
damping_nt             1
dissipation_nt         0.
beta                   0
mue_n_fac              1.0
mue_p_fac              1.0
mue_P_fac              1.0
mue_w_fac              1.0
ballooning             2
visc_layer_size        0.25
drift_wave_term        2
drift_wave_Te          1
radial_electric_field  0
MP                     0
MP_NS                  100000
MP_SR                  0.0000005
hyper_factor           0.00000
sheath                 2
background             1
background_n           0.025
background_t           1.0
background_time        20
ramb_up                1
ramb_up_time           5000
fp                     10
fixed_time             50
init                   999
init_ds                1
mean_flow              5
mean_flow_time         0.025
mean_flow_radial       1.0
mean_dissipation       0
randbedingung0         2
bdvala0                0.000000
bdvalb0                0.000000
amp_random0            0.0001
randbedingung1         2
bdvala1                1
bdvalb1                0.00
amp_random1            0.0001
randbedingung2         2
bdvala2                1
bdvalb2                0.00
amp_random2            0.0001
randbedingung3         2
bdvala3                1
bdvalb3                0.00
amp_random3            0.0001
=====================  =================

Profile datafile
----------------
The profile datafile provide the initial density and temperature field profiles, which also serve as reference profiles towards which the solution is relaxed in the innermost edge region of the HESEL domain. The datafile must have the filename `exp_profiles.dat` and an example can be found :download:`here <static/exp_profiles.dat>`.

The datafile consists of four space-separated columns of data, so that each row constitute a datapoint. In each datapoint is the following data

==========  ==============================  ==========
Column      Variable                        Unit
==========  ==============================  ==========
1           Radial position with LCFS at 0  m
2           Electron density                10^19 m^-3
3           Electron temperature            eV
4           Ion temperature                 eV
==========  ==============================  ==========

.. _Probe positions:

Probe positions
---------------
The HESEL code will produce a set of default output data described in :ref:`HESEL output`. Additional temporally highly resolved 1D data can be added from synthetic probes located in a row througout the domain. They are poloidally centered in the domain and located with a radial distance of 1 rhos. In the probe datafile, which must be named `myprobe.dat`, is specified the number of tips and their relative location, and the fields measured. An example of a probe datafile is found :download:`here <static/myprobe.dat>`.

The format must follow that of the provided example. Each tip has a specified relative position to the probe position in units of grid point spacing. I.e., the block
::

	# -------------------------------------------------------------------
	#  TIP1
	# -------------------------------------------------------------------
	@TIP1	10.0	0.0	hdf5
	density
	vorticity
	temperature
	potential
	velocity_radial
	velocity_poloidal

adds a probe-tip at 10 grid points radially outwards and at the same poloidal position as that of the probe. It outputs the electron density (density), E-cross-B vorticity (vorticity), electron temperature (temperature), the electrostatic potential (potential), radial velocity (volocity_radial), and poloidal velocity (velocity_poloidal) at the specified gridpoint. All output are in Bohm-normalized units.

HESEL code structure
====================

Running a HESEL simulation
==========================
HESEL is run in from the data directory, containing the input file (and optional data files) using mpirun. In the data directory return
::

	mpirun -np=<number_of_processors> <path_to_esel> -I <input_file_name>

Here :code:`<number_of_processors>` is the number of processors to run the code and must be a power of 2, :code:`<path_to_esel>` is the path to the compiled HESEL code conventionally located in `C-HESEL/bin/esel.marconi.A3` for a MARCONI install, and :code:`<input_file_name>` is the name of the input file described in :ref:`HESEL input`.

.. _HESEL output:

HESEL output
==================
For a run with an input file `filename` HESEL produces two output files; `filename.erh` and `filename.h5`. The .erh file reviews the run settings and displays key parameters for the simulation. The full simulation data output is stored in the hdf5 file.

The structure of the output datafile `filename.h5` is
::

/data
/data/var0d
/data/var1d
/data/var1d/fixed-probes
/data/var2d
/data/var2d/grid
/data/var3d
/data/xanimation
/documentation
/equil
/params
/params/structure_data
/params/structure_param

The content of the groups are described in detail below.

* **data**

  The `data` group stores the subgroups with the solution data and derived data that are of interest. The data are grouped into the number of spatial dimensions of the data, e.g., the `var1d` group contains data of one spatial dimension (e.g., temporal evolution of profiles). The `data` subgroups are 

  * **var0d**
  
    `Description`

  * **var1d**
  
    `Description`

    * **fixed-probes**
	  
      `Description`

    
  * **var2d**
    
    `Description`
	
	* **grid**
      
	  `Description`
      
  
  * **var3d**

    Currently no data are stored in this group.

  * **xanimation**

    `Description`

* **documentation**
  
  The `documentation` group contains two datafiles, which are merely copies of the input files.
  
  ============  =====================================================================
    Filename      Description  
  ============  =====================================================================
  myprobe.dat   Copy of `myprobe.dat` datafile described in :ref:`Probe positions`.
  run.ini 		Copy of input file described in :ref:`HESEL input`.
  ============  =====================================================================

* **equil**
  
  Currently no data are stored in this group.

* **params**
  
  This group contains two subgroups with parameter data that are either defined in, or derived directly from, the input file. 
  
  * **structure_data**
	
  * **structure_param**
  
  
    

.. _HESEL as workflow actor:

=======================
HESEL as workflow actor
=======================
*The HESEL wrapper, input/output, ...*

.. _HESEL in the KEPLER workflow:

============================
HESEL in the KEPLER workflow
============================
*End-user documentation, installing and running HESEL in the workflow, ...*

.. ********************
.. RENATE Documentation
.. ********************