# -*- coding: utf-8 -*-
"""
Created on Wed Jul 20 08:44:05 2022

@author: ajaap
"""

#Assignment 3 Problem 3

import matplotlib.pyplot as plt

def sum4(x=[],N=10):
    x_totals = []
    for k in range(len(x)):
        total = 0
        for n in range(1,N+1):
            total += ((x[k])**n)/n
        
        x_totals.append(total)
    plt.plot(x,x_totals)
    plt.show()
    
sum4(x = range(10),N=10)