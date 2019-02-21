% Afaptive integration by Midpoint method or Trapezoidal method
%function calculate_integral = adaptive_integration(f, a, b, method)
clc
clear all
close all

    f = @(x) x^2;
    a = 0;
    b = 2;
    method = -1;
    n = 5;
    
    if method == 1;
        method_midpont = midpoint(f, a, b, n);
    elseif method == 0;
        method_trapezoidal = trapezoidal(f, a, b, n);
    elseif 0 > method
        fprintf('Method is not correct, your method input method is: %.1f, incorrect method. \n ', method) 
    elseif 1 < method
        fprintf('Method is not correct, your method input method is: %.1f, incorrect method. \n ', method) 
    end    
   
    
%end