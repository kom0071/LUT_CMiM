%Main file for calcute integration
clc
clear all
close all

f = @(x) x^(1/2); % Function for integration
a = 0;
b = 2;
method = input('Select a method for calculate -> 1 is Midpoint, 0 is Trapezoidal:');
eps = input('Select an Error for calculate:');

results = adaptive_integration(f, a, b, eps, method);

