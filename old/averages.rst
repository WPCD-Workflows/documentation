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

Consider a process :math:`p ( \vec u )` which is a functional of dependent
variables :math:`\vec u`. Measure :math:`p` at discrete time intervals
:math:`t_n,` with values :math:`p_n=p(t_n)` and interval length 
:math:`\tau=t_n-t_{n-1}`. The moving exponential average :math:`A_n=A(p_n)`
on the :math:`n \hbox{-th}` interval is defined as

.. math::
   
   A_n = \epsilon p_n + (1-\epsilon)A_{n-1} \qquad \qquad \hbox{with} \qquad \epsilon=\alpha \tau

in which the small parameter :math:`\epsilon` is given in terms of the interval :math:`\tau` and an inverse time constant :math:`\alpha.`

In the first instance :math:`p` is measured there is no :math:`A` so the
first value of :math:`A` is simply set to :math:`p` since it can be
assumed that the initial state for :math:`p` has persisted for infinite
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

Taking the limit :math:`\tau \to 0` is the same as taking :math:`\epsilon \to 0` so both of these expressions become equivalent to

.. math::
   
   {\partial A \over \partial t} = \alpha(p-A)

whose solution is given below.

Equivalence to Past-Time Convolution Integral
---------------------------------------------

The solution of the above differential equation is given by the method
of undetermined coefficients,

.. math::

   {\partial A \over \partial t} +\alpha A = \alpha p \ \ e^{-\alpha t}{\partial \over \partial t} \left( e^{ \alpha t} A \right) = \alpha p \ \ {\partial \over \partial t} \left( e^{\alpha t} A \right) = \alpha p e^{\alpha t}

We may integrate this over all past time, to find

.. math::
   
   A(t) = \int_{-\infty}^t \alpha dt' p(t') e^{-\alpha (t-t') }

This is a convolution integral over the kernel :math:`e^{-\alpha(t-t')}`
and the signal :math:`p(t')`. The time constant :math:`\alpha^{-1}` is
just the memory decay time, while if :math:`p` is constant then the
integral yields unity times :math:`p`. This is the same as the
normalisation with the :math:`(1-\epsilon)` factor in the average formula
above, which is needed since the interval is of finite size.

Hence the running exponential average is operationally the same as a memory
decay integral over past time. The elegant feature is the need to keep only
the current value of :math:`A`, as it already contains all that is needed
of the past time evolution of :math:`p`.

notes
-----

Some properties of the running exponential average and how to choose its
main time-memory parameter:

-  The :math:`(1-\epsilon)` factor is needed for normalisation
-  if :math:`p=\hbox{constant}` then :math:`A=p` for all :math:`t`
   
  -  the integral with :math:`\alpha dt'` yields unity
  -  the :math:`\epsilon` and :math:`(1-\epsilon)` factors add to unity
  -  therefore set the first value of :math:`A` to the first value of :math:`p`

-  in choosing the memory decay time :math:`\alpha^{-1} \dots`
   
  -  one should have :math:`\alpha \tau_{cor} \ll 1`
  -  best results are for :math:`\alpha \tau_{sat} \sim 1`
  -  some trial/error required; edge turbulence likes :math:`\alpha^{-1}=200 L_\parallel / c_s`

In these expressions :math:`\tau_{{cor}}` and :math:`\tau_{{sat}}` are
the correlation and saturation times of the turbulence, respectively.

