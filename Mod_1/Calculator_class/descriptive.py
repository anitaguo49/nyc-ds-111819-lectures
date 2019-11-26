#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep  4 14:25:52 2019

@author: swilson5
"""
import math

class Calculator:
    def __init__(self, data):
        self.data = data
        self.recalc()

    def _calc_mean(self): #no need to pass thru data,it's already contained within self.data #calculate mean or median, we are using the self.data. unless it's add or remove data
        return sum(self.data)/len(self.data)

    def _calc_length(self,data):
        return len(self.data)
        
    def _calc_median(self, data):
        if len(self.data)%2 == 0:
            mid_left = data[len(self.data) // 2 -1]
            mid_right = data[len(self.data) // 2]
            avg = (mid_left + mid_right) / 2
        else:
            avg = data[self._calc_length(data) // 2]
        return avg

    def _calc_variance(self, data):
        return sum([(x - self._calc_mean)**2 for x in data])/(self._calc_length(data)-1)
  
    def _calc_stand_dev(self,data):
        return self._calc_variance **0.5
        
    #public methods
    def add_data(self, data):
        self.data.extend(data)
    self.recalc()

    def remove_data(self, data):
        for number in data:
            self.data.remove(number)
        self.data.remove(data)

    
    def recalc(self):
        self.data = sorted(self.data)
        self.length = self._calc_length()
        self.mean = self._calc_mean()
        self.median = self._calc_median()
        self.variance = self._calc_variance()
        self.stand_dev = self._calc_stand_dev()