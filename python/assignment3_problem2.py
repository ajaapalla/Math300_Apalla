# -*- coding: utf-8 -*-
"""
Created on Tue Jul 19 22:28:57 2022

@author: ajaap
"""
#Assignment 3 Problem 2



import math
import matplotlib.pyplot as plt

def sum3(N=[]):
    N_totals = []
    total = 0
    for n in range(1,N+1):
        total += (-1**(n+1))/n
        
        N_totals.append(total)

    plt.plot(n,N_totals)
    plt.show()

sum3(N=range(100))
