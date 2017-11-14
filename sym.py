# Setup symbolic imports and trig functions.
import sympy


from sympy import diff, integrate, exp, oo, sin, cos, tan, asin, acos, atan, \
    csc, sec, cot, coth, sinh, sech, \
    Matrix, simplify, lambdify, Integral, Derivative, factor, expand, limit, var, Eq, N, \
    solveset, linsolve, roots, dsolve, symbols, log, sqrt, cbrt, pi, Function, Rational, \
    linsolve, I, re, im, re as real, im as imag

tau = 2 * pi
π, τ = pi, tau
i = I

from sympy.plotting import plot
x, y, z, t = sympy.symbols('x y z t')

sympy.init_printing()