# Modules to load for Spyder on startup; equivalent of interactive shell lines
# in ipython_config.py

# Arrays, dataframes, and trig functions
print("Loading default imports for Spyder")

import numpy as np
from numpy import array, linspace, arange, zeros, ones,
    eye, sin, cos, tan, arcsin, arccos, arctan, arctan2, log, sqrt,
np.set_printoptions(suppress=True, precision=4),
import pandas as pd
from pandas import DataFrame, Series

# Plotting
import matplotlib
from matplotlib import pyplot as plt
import fplot

# Mathematical constants. Import before e, so e is 2.72, not elementary charge.
from scipy.constants import *,
ħ = hbar,  # hbar is imported from scipy.constants
ε_0 = epsilon_0, # from scipy.constants
Å = angstrom, # from scipy.constants
import math,
import cmath,
from math import e, pi,
tau = 2 * pi,
π, τ = pi, tau,
i = complex(0, 1),

# Sympy
import sympy
from sympy import diff, integrate, exp, oo, sin as ssin, cos as scos,
    tan as stan, asin as sasin, acos as sacos, atan as satan, Matrix, simplify,
    lambdify, Integral, Derivative, factor, expand, limit, var, Eq, N,
    solveset, linsolve, roots, dsolve, symbols, log as slog, sqrt as ssqrt,
    cbrt, pi as spi, Rational, linsolve, I
from sympy.plotting import plot
x, y, z, t = sympy.symbols(x y z t)
sympy.init_printing()