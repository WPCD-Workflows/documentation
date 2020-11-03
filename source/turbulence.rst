###############################################
Turbulence with synthetic diagnostics workflows
###############################################
The turbulence with synthetic diagnostics workflows consist of the HESEL and RENATE actors for turbulence simulation and synthetic diagnostics. 

*******************
HESEL Documentation
*******************
*Brief description of HESEL.*

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

.. _HESEL input file:

HESEL input file
================
The stand-alone version of HESEL can be run either entirely from an input file, or in a setup where the initial density and temperature fields are read from an additional datafile. The probe positions for synthetic diagnogstics probes are provided in a separate datafile. All input files must be  located in the same directory.

HESEL input file
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
The HESEL code will produce a set of default output data described in :ref:`HESEL output files`. Additional temporally highly resolved 1D data can be added from synthetic probes located in a row througout the domain. They are poloidally centered in the domain and located with a radial distance of 1 rhos. In the probe datafile, which must be named `myprobe.dat`, is specified the number of tips and their relative location, and the fields measured. An example of a probe datafile is found :download:`here <static/myprobe.dat>`.

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

adds a probe-tip at 10 grid point radially outwards and at the same poloidal position as that of the probe. It outputs the electron density (density), E-cross-B vorticity (vorticity), electron temperature (temperature), the electrostatic potential (potential), radial velocity (volocity_radial), and poloidal velocity (velocity_poloidal) at the specified gridpoint. All output are in Bohm-normalized units.

HESEL code structure
====================

Running a HESEL simulation
==========================
HESEL is run in from the data directory, containing the input file (and optional data files) using mpirun. In the data directory return
::

	mpirun -np=<number_of_processors> <path_to_esel> -I <input_file_name>

Here :code:`<number_of_processors>` is the number of processors to run the code and must be a power of 2, :code:`<path_to_esel>` is the path to the compiled HESEL code conventionally located in `C-HESEL/bin/esel.marconi.A3` for a MARCONI install, and :code:`<input_file_name>` is the name of the input file described in :ref:`HESEL input file`.

.. _HESEL output files:

HESEL output files
==================


=======================
HESEL as workflow actor
=======================
*The HESEL wrapper, input/output, ...*

============================
HESEL in the KEPLER workflow
============================
*End-user documentation, installing and running HESEL in the workflow, ...*

.. ********************
.. RENATE Documentation
.. ********************