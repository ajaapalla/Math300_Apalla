#!usr/bin/env python3

import numpy as np

def trapezoid(f,a=0,b=1,n=100):
    if n <=0:
        raise ValueError('n is not positive',n)
