# -*- coding: utf-8 -*-
"""
Created on Mon Jul 18 11:14:25 2022

@author: ajaap
"""

import sympy as sp
x,y = sp.symbols('x,y')
sp.var('u,v')

#var('x') just calls: x = symbols('x')

display(x+x-y)
expr = (u+v)**4
display(expr.expand())

newexpr = expr.expand()
display(newexpr.factor())

display(newexpr.subs(u,2))
display(newexpr.subs(u,2).factor())
