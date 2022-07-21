# -*- coding: utf-8 -*-
"""
Created on Wed Jul 20 09:14:00 2022

@author: ajaap
"""

#Assignment 3 Problem 4

import matplotlib.pyplot as plt

def midpoint(f,a=0,b=1,n=10):
    h = (b-a)/n
    approx = 0
    for i in range(0,n-1):
        approx += f(a+h*i)
    total = approx*(h/2)
    return total

## example function 'x to the 4th'
def function(x):
    return x*x*x*x

print(midpoint(function))

x = [range(100)]
y = x*x*x*x
#trouble plotting the function here
plt.plot(x,y)
plt.show()