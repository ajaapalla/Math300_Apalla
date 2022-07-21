# -*- coding: utf-8 -*-
"""
Created on Wed Jul 20 11:39:26 2022

@author: ajaap
"""

import matplotlib.pyplot as plt
import circle
import random

circle = circle.circle(cx = random.randint(1,25),cy = random.randint(1,25),r = random.randint(1,10))
circle_plot = plt.Circle((circle.cx, circle.cy), circle.r, fill = False)

fig, ax = plt.subplots()
ax.axis([-50,50, -50,50])

ax.add_artist(circle_plot)
plt.show()