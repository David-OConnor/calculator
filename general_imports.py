# Modules to load for Spyder on startup; equivalent of interactive shell lines
# in ipython_config.py

# Arrays, dataframes, and trig functions

import math
import cmath

import numpy as np
from numpy import array, linspace, arange, zeros, ones, \
    eye, sin, cos, tan, arcsin, arccos, arctan, arctan2, log, sqrt

import sympy as sp

np.set_printoptions(suppress=True, precision=4)
import pandas as pd
from pandas import DataFrame, Series

# Plotting
import matplotlib
from matplotlib import pyplot as plt
import fplot

# Scientific constants. Import before e, so e is 2.72, not elementary charge.
from scipy.constants import *
ħ = hbar,  # hbar is imported from scipy.constants
ε_0 = epsilon_0 # from scipy.constants
Å = angstrom # from scipy.constants

from num import *