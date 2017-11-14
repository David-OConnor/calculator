# Setup numeric constants and trig functions.

# Scientific constants. Import before e, so e is 2.72, not elementary charge.
from scipy.constants import *
ħ = hbar  # hbar is imported from scipy.constants
ε_0 = epsilon_0 # from scipy.constants
Å = angstrom # from scipy.constants

from numpy import array, linspace, arange, zeros, ones, diff, real, imag, \
    eye, sin, cos, tan, arcsin, arccos, arctan, arctan2, sinh, cosh, tanh, \
    log, sqrt, \
    e, pi, exp

# Numpy doest include these trig functions by default.
csc = lambda x: 1 / sin(x)
sec = lambda x: 1 / cos(x)
cot = lambda x: 1 / tan(x)

csch = lambda x: 1 / sinh(x)
sech = lambda x: 1 / cosh(x)
coth = lambda x: 1 / tanh(x)

tau = 2 * pi
π, τ = pi, tau
i = complex(0, 1)