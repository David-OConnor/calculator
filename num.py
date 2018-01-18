# Setup numeric constants and trig functions.

# Scientific constants. Import before e, so e is 2.72, not elementary charge.
from scipy.constants import *
# Assign special characters to values from scipy.constants.
ħ = hbar
ε_0 = epsilon_0
Å = angstrom
α = alpha

from numpy import array, linspace, arange, zeros, ones, diff, real, imag, \
    eye, sin, cos, tan, arcsin, arccos, arctan, arctan2, arcsin as asin, \
    arccos as acos, arctan as atan, sinh, cosh, tanh, \
    log, log10, sqrt, e, pi, exp

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


import scinot
scinot.start()

def asquare(*items):
    """Helper for making square arrays."""
    side_len = sqrt(len(items))
    assert not side_len % 1, "Array must be square." # Array numbers must form a square.
    return array(items).reshape(int(side_len), int(side_len))