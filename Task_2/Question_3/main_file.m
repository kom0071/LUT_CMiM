clc
clear all
close all

f = @(t) exp(pi-t);  % Input function
aa = -pi;           % Interval for integral
bb = pi;            % Interval for integral
N = 100;              % Number of coefficients b
M = 1000;            % Number of steps in integration
namefile = 'Graph approximation';

b_n_in = integrate_coeffs(f, N, M);

for ii = 1:1:N
b_n_in = integrate_coeffs(f, N, M);    
fprintf('Coefficient b(%.f) from integrate is %.4f. \n \n', ii, b_n_in(ii)) % Print results from integrate
end

plot_approx(f, N, M, namefile);