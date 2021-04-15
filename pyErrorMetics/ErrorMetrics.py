#! /usr/bin/env python
# -*- coding: utf-8 -*-
#

"""
Error Metrics
~~~~~~~~~~~~~
Python module to calculate error metrics. The argument definitions are valid
for each function in the module.
    Args:
        x (iterable): Actual/observed values
        y (iterable): Predicted values
"""

import statistics
from collections.abc import Iterable

__version__ = '0.0.1.dev'
__author__ = 'Ismail SEZEN'
__email__ = 'sezenismail@gmail.com'
__license__ = 'AGPL v3.0'
__year__ = '2021'


def _check_(x, y):
    if not (isinstance(x, Iterable) and isinstance(y, Iterable)):
        raise ValueError("x and y must be iterable")
    if len(x) != len(y):
        raise ValueError("length of x and y must be same")


def _dif_(x, y):
    """ Take difference of two iterable objects """
    _check_(x, y)
    return [i - j for (i, j) in zip(x, y)]


def _div_(x, y):
    _check_(x, y)
    return [i / j for (i, j) in zip(x, y)]


def se(x, y):
    """ Elementwise squared difference """
    return [i**2 for i in _dif_(x, y)]


def mse(x, y):
    """ Mean squared difference """
    return statistics.mean(se(x, y))


def rmse(x, y):
    """ Root Mean squared difference """
    return mse(x, y) ** .5


def sse(x, y):
    """ Sum of the squared difference """
    return sum(se(x, y))


def rse(x, y):
    """ Relative squared error """
    return sse(x, y) / sse(x, statistics.mean(y))


def rrse(x, y):
    """ Root Relative squared error """
    return rse(x, y) ** .5


def ae(x, y):
    """ Absolute difference """
    return [abs(i) for i in _dif_(x, y)]


def mae(x, y):
    """ Mean absolute difference """
    return statistics.mean(ae(x, y))


def mdae(x, y):
    """ Median absolute error """
    return statistics.median(ae(x, y))


def ape(x, y):
    """ Elementwise absolute percentage difference """
    return _div_(ae(x, y), [abs(i) for i in x])


def mape(x, y):
    """ Mean absolute percentage error """
    return statistics.mean(ape(x, y))
