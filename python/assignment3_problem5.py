# -*- coding: utf-8 -*-
"""
Created on Wed Jul 20 21:12:55 2022

@author: ajaap
"""

# Assignment 3 Problem 5
import math
import sympy as sp
sp.init_printing()

x,y = sp.symbols('x,y')

expr = 1/((x+1)*(x-3))

function2 = (x**3)-((sp.cos(math.pi*x)**2)/(2*(x**2)+1))+((11/3)*x**2)-1

display(sp.diff(function2,x))