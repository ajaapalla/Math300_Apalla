# -*- coding: utf-8 -*-
"""
Created on Wed Jul 20 10:40:31 2022

@author: ajaap
"""

import math
class circle():
    
    def __init__(self, cx = 0, cy = 0, r = 1):
        self.cx = cx
        self.cy = cy
        self.r = r
        
    def area(self):
        ## Code to give area of our circle
        return math.pi*(self.r**2)
        
    def circumference(self):
        ## Code for our circumference
        return 2*math.pi*self.r
    
    def inside(self,x,y):
        ## Check if point is inside circle 
        distance = math.sqrt((self.cx - x)**2 + (self.cy - y)**2)
        
        return distance <= self.r
       
a = circle()
print(a.area())
print(a.circumference())
print(a.inside(.5,.5))
print(a.inside(2,5))