#! /usr/bin/env python
# -*- coding: utf-8 -*-
""" Test module for ErrorMetrics """

import ErrorMetrics as em
from collections.abc import Iterable

x = [2.7, 3.7, 5.7, 9.1, 2.0]
y = [9.0, 9.4, 6.6, 6.3, 0.6]


def assert_almost_equal(x, y, th=0.0001):
    if isinstance(x, Iterable) and isinstance(y, Iterable):
        for (i, j) in zip(x, y):
            assert_almost_equal(i, j, th)
    else:
        assert abs(x - y) < th


def test_se():
    """ Test Squared Error """
    assert_almost_equal(em.se(x, y), [39.69, 32.49, 0.81, 7.84, 1.96])


def test_mse():
    """ Test Mean Squared Error """
    assert em.mse(x, y) == 16.558


def test_rmse():
    """ Test Root Mean Squared Error """
    assert em.rmse(x, y) == 4.069152245861538
