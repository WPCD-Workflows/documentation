.. _imp3_ets_visualization:

Visualizing ETS Results
=======================

Visualizing the results is done by a combination of methods. The primary
method if the UAL is not being used is using gnuplot. To visualize data
written via the UAL, python is used.

After running the analytic test case, the comparison between the
calculated and analytic results can be visualized by running

::

   GNUPLOT/compare.gnuplot

The results are present in the file compare.ps as a series of frames, or
batched in groups of a 100 in compare.100.ps.

For plotting the UAL results, a number of scripts have been created.
These all rely on having the python UAL bindings functioning. The
following typically take at least two arguments, the "shot" number and
the "run" number. They also take additional arguments (before the shot
number and run number),

-  -u USER
   to change the USER for reading the UAL data (default
   $USER
   )
-  -d DEVICE
   for changing the DEVICE name (default
   test
   )
-  -v VERSION
   for changing the UAL version (default
   4.08a
   )
-  -f FILENAME
   for specifying the FILENAME of the resultant plot output (default
   something like
   xxxx_SHOT#_RUN#.ps
   )
-  -s SLICE
   for specifying the SLICE number (default
   NONE
   )

Available commands (all in diagnostics) include:

-  diagnostics/run
   plot ne plot the ne profile
-  diagnostics/run
   plot te plot the te profile
-  diagnostics/run
   plot ti plot the ti profile
-  diagnostics/run
   plot psi plot the psi profile
-  diagnostics/run
   plot q plot the q profile
-  diagnostics/run
   plot zeff plot the zeff profile
-  diagnostics/run
   plot coresource plot the core sources
-  diagnostics/run
   plot coretransp plot the core transport
-  diagnostics/run
   plot eq ets plot key core profile quantities
-  diagnostics/run
   plot eq plot the equilibrium

Examples: Temporal evolution

::

   diagnostics/run_plot_ne -f ne_5_115.png 5 115

::

   diagnostics/run_plot_te -f te_5_115.png 5 115

::

   diagnostics/run_plot_ti -f ti_5_115.png 5 115

::

   diagnostics/run_plot_psi -f psi_5_115.png 5 115

::

   diagnostics/run_plot_q -f q_5_115.png 5 115

::

   diagnostics/run_plot_zeff -f zeff_5_115.png 5 115

Examples: Time slices

::

   diagnostics/run_plot_ne -f ne_5_115_s=100.png -s 100 5 115

::

   diagnostics/run_plot_te -f te_5_115_s=100.png -s 100 5 115

::

   diagnostics/run_plot_ti -f ti_5_115_s=100.png -s 100 5 115

::

   diagnostics/run_plot_psi -f psi_5_115_s=100.png -s 100 5 115

::

   diagnostics/run_plot_q -f q_5_115_s=100.png -s 100 5 115

::

   diagnostics/run_plot_zeff -f zeff_5_115_s=100.png -s 100 5 115      

Examples: Profile of coresource and coretransp

::

   diagnostics/run_plot_coresource -f coresource_5_48.png 5 48

::

   diagnostics/run_plot_coretransp -f coretransp_5_48.png 5 48

::

   diagnostics/run_plot_coresource -f coresource_5_48_s=100.png -s 100 5 48

::

   diagnostics/run_plot_coretransp -f coretransp_5_48_s=100.png -s 100 5 48

Examples: Plot equilibrium and a summary of core profiles

::

   diagnostics/run_plot_eq_ets -f eq_ets_5_40.png 5 40

::

   diagnostics/run_plot_eq -f eq_5_40.png 5 40

The following can only be used for comparing the results of solver_test
since they required the analytic result to be stored in the UAL files.

::

   diagnostics/run plot ne err plot the ne error profile
   diagnostics/run plot te err plot the te error profile
   diagnostics/run plot ti err plot the ti error profile
   diagnostics/run plot psi err plot the psi error profile

Examples: Plot errors between analytic and ETS primary quantities from
the analytic test case

::

   diagnostics/run_plot_ne_err -f ne_err_2_3.png 2 3

::

   diagnostics/run_plot_te_err -f te_err_2_3.png 2 3

::

   diagnostics/run_plot_ti_err -f ti_err_2_3.png 2 3

::

   diagnostics/run_plot_psi_err -f psi_err_2_3.png 2 3

For diagnostics/run_plot_eq the slice number can be negative in which
case all of the slices are written as separate png files suitable for
use in making a movie).

For the equilibrium CPO, two representations of the equilibrium are
possible: \\( \\psi(R,Z)\) and \\(R(\psi, \\theta)\), \\(Z(\psi,
\\theta)\). For data in the first format, ``run_plot_eq_grid`` and for
the second ``run_plot_eq_coord`` should be used. Examples: Plot
equilibria (\( \\psi(R,Z)\) and \\(R(\psi, \\theta)\), \\(Z(\psi,
\\theta)\))

::

   diagnostics/run_plot_eq_grid -f eq_grid_5_65.png 5 65

::

   diagnostics/run_plot_eq_coord -f eq_coord_5_65.png 5 65

Examples: Plot reconstruction of $\psi(R,Z)$ as well as $B_R$, $B_Z$ and
$B_\phi$ For all of the ETS runs, a fixed boundary equilibrium code is
used, producing \\(R(\psi, \\theta)\) and \\(Z(\psi, \\theta)\). Since
some other modules might require \\( \\psi(R,Z)\), a module to produce
this (and \\(B_R\), \\(B_Z\) and \\(B_\phi\)) was written
(``equilibrium_augmenter``). The output from this cane seen in the
following figure, produced by

::

   diagnostics/run_plot_psi_B -f psi_B_5_65.png 5 65

::

   diagnostics/run_plot_eq_ets_changing_rho -d jet 78092 203

produced the following plots

coster $
