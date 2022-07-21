# -*- coding: utf-8 -*-
"""
Created on Mon Jul 18 11:40:41 2022

@author: ajaap
"""

import sympy as sp
sp.init_printing()

x,y = sp.symbols('x,y')

expr = 1/((x+1)*(x-3))

print(expr.apart())
print(expr.together())