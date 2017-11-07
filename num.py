# Setup numeric constants and trig functions.

# Scientific constants. Import before e, so e is 2.72, not elementary charge.
from scipy.constants import *
ħ = hbar,  # hbar is imported from scipy.constants
ε_0 = epsilon_0 # from scipy.constants
Å = angstrom # from scipy.constants

from numpy import array, linspace, arange, zeros, ones, diff, \
    eye, sin, cos, tan, arcsin, arccos, arctan, arctan2, log, sqrt, \
    e, pi

tau = 2 * pi
π, τ = pi, tau
i = complex(0, 1)