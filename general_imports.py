# Modules to load for Spyder on startup; equivalent of interactive shell lines
# in ipython_config.py

# Arrays, dataframes, and trig functions

import math
import cmath

import numpy as np
np.set_printoptions(suppress=True, precision=4)

import sympy as sp

import pandas as pd
from pandas import DataFrame, Series

# Plotting
import matplotlib
from matplotlib import pyplot as plt
import fplot