# Modules to load for Spyder on startup; equivalent of interactive shell lines
# in ipython_config.py

# Arrays, dataframes, and trig functions

import math
import cmath

from math import factorial

import siunits as si

import numpy as np
np.set_printoptions(suppress=True, precision=5)

import sympy as sp

# Plotting
import matplotlib
matplotlib.use('Qt5Agg')
from matplotlib import pyplot as plt
import fplot
