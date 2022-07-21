#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt

# !usr/bin/env python3

import numpy as np



def trapezoid(f, a=0, b=1, n=100):
    h = (b-a)/n
    sum = 0
    if n <= 0:
        raise ValueError('n is not positive', n)
    for s in range(1, n-1):
        sum += f(a+s*h)
        approx = (h / 2) * (f(a) + f(b) + 2 * sum)
    return approx

def function(x):
    return x*x*x

a= trapezoid(function)
print(trapezoid(function))

