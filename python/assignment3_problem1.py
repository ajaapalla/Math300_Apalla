# -*- coding: utf-8 -*-
"""
Created on Tue Jul 19 21:31:35 2022

@author: ajaap
"""
#Problem 1 


import numpy as np
import scipy as sc

from scipy import linalg
a =  np.array([[1,2],[3,4]])
b = np.array([5,8])
x = sc.linalg.solve(a,b)
display(x)
