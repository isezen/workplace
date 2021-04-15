#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# Python script to test ErrorMetrics

import numpy as np
import ErrorMetrics as em

x = [2.7, 3.7, 5.7, 9.1, 2.0]
y = [9.0, 9.4, 6.6, 6.3, 0.6]

print('Mean Absolute Error = {:.02f}'.format(em.mae(x, y)))
print('Mean Absolute Percentage Error = {:.02f}'.format(em.mape(x, y)))
print('Median Absolute Error = {:.02f}'.format(em.mdae(x, y)))

print('Sum of Squared Error = {:.02f}'.format(em.sse(x, y)))
print('Mean Squared Error = {:.02f}'.format(em.mse(x, y)))
print('Root Mean Squared Error = {:.02f}'.format(em.rmse(x, y)))

# what if I want to use numpy?
x = np.asarray(x)
y = np.asarray(y)

# what about tuple?
x = tuple(x)
y = tuple(y)
