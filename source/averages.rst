.. _imp4_averages:

============================
 Running Exponential Average
============================

Overview
--------

In conventional transport modelling, turbulent fluxes are modelled in terms
of processes which are diffusive in the local relaxation sense, with the
average flux given by a diffusion coefficient and an effective pinch
velocity. The equations are of dominantly parabolic character, which means
in practice that an iterate will move monotonically towards the solution in
parameter space.

This is not the case for turbulence. Convergence is statistical, which is
something different than a diffusive relaxation. If turbulence is
stationary, it is meant only that the mean of a distribution of iterates is
stationary, not the iterates themselves. The standard deviation can be
significant, of order unity compared to the mean, of any distribution of
iterates.

This makes for a noisy signal if the output of a turbulence code is used
for transport coefficients in a workflow. A sound way to overcome the
attendant problems is to use a moving average. Even an average over a
moving window can be as noisy as the original signal, however. What works
better is a weighted average over recent past values. A method to get this
is called a running exponential average, which is essentially the same
thing as a convolution integral over an exponential memory decay times the
past signal. It turns out to be very easy to obtain this without saving
past values.

The original reference for the following is S W Roberts, "Control Chart
Tests Based on Geometric Moving Averages," Technometrics 1 (1959)
239-250, cited by all the good WWW resources, including the Wikipedia
page on Moving Averages and the NIST Statistical Handbook online.

Definition
----------

Consider a process \\( p ( \\vec u ) \\) which is a functional of dependent
variables \\( \\vec u \\). Measure \\( p \\) at discrete time intervals
\\( t_n, \\) with values \\( p_n=p(t_n) \\) and interval length \\(
\\tau=t_n-t_{n-1} \\). The moving exponential average \\( A_n=A(p_n) \\)
on the \\( n \\hbox{-th} \\) interval is defined as

.. math::
   
   A_n = \epsilon p_n + (1-\epsilon)A_{n-1} \qquad \qquad \hbox{with} \qquad \epsilon=\alpha \tau

in which the small parameter \\( \\epsilon \\) is given in terms of the interval \\( \\tau \\) and an inverse time constant \\( \\alpha. \\)

In the first instance \\( p \\) is measured there is no \\( A \\) so the
first value of \\( A \\) is simply set to \\( p \\) since it can be
assumed that the initial state for \\( p \\) has persisted for infinite
previous time up to the initial time point.

Differential Equation
---------------------

The equivalent differential equation is found by forming the relevant
finite difference,

.. math::
   
   A_n - A_{n-1} = \epsilon (p_n - A_{n-1})

which we can also cast as

.. math::
   
   (1-\epsilon)(A_n - A_{n-1}) = \epsilon (p_n - A_n)

Taking the limit \\( \\tau \\to 0 \\) is the same as taking \\( \\epsilon \\to 0 \\) so both of these expressions become equivalent to

.. math::
   
   {\partial A \over \partial t} = \alpha(p-A)

whose solution is given below.

Equivalence to Past-Time Convolution Integral
---------------------------------------------

The solution of the above differential equation is given by the method
of undetermined coefficients,

.. math::

   {\partial A \over \partial t} +\alpha A = \alpha p \\ \\ e^{-\alpha t}{\partial \over \partial t} \left( e^{ \alpha t} A \right) = \alpha p \\ \\ {\partial \over \partial t} \left( e^{\alpha t} A \right) = \alpha p e^{\alpha t}

We may integrate this over all past time, to find

.. math::
   
   A(t) = \int_{-\infty}^t \alpha dt' p(t') e^{-\alpha (t-t') }

This is a convolution integral over the kernel \\( e^{-\\alpha(t-t')} \\)
and the signal \\( p(t') \\). The time constant \\( \\alpha^{-1} \\) is
just the memory decay time, while if \\( p \\) is constant then the
integral yields unity times \\( p \\). This is the same as the
normalisation with the \\( (1-\\epsilon) \\) factor in the average formula
above, which is needed since the interval is of finite size.

Hence the running exponential average is operationally the same as a memory
decay integral over past time. The elegant feature is the need to keep only
the current value of \\( A \\), as it already contains all that is needed
of the past time evolution of \\( p \\).

notes
-----

Some properties of the running exponential average and how to choose its
main time-memory parameter:

-  The \\( (1-\\epsilon) \\) factor is needed for normalisation
-  if \\( p=\\hbox{constant} \\) then \\( A=p \\) for all \\( t \\)
   
  -  the integral with \\( \\alpha dt' \\) yields unity
  -  the \\( \\epsilon \\) and \\( (1-\\epsilon) \\) factors add to unity
  -  therefore set the first value of \\( A \\) to the first value of \\( p      \\)

-  in choosing the memory decay time \\( \\alpha^{-1} \\dots \\)
   
  -  one should have \\( \\alpha \\tau_{cor} \\ll 1 \\)
  -  best results are for \\( \\alpha \\tau_{sat} \\sim 1 \\)
  -  some trial/error required; edge turbulence likes \\( \\alpha^{-1}=200 \L_ \\parallel / \c_s \\)

In these expressions \\( \\tau_{{cor}} \\) and \\( \\tau_{{sat}} \\) are
the correlation and saturation times of the turbulence, respectively.

