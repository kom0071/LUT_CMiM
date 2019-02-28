clc
clear all
close all

% Input data for exercise 3.12

f = @(t) (1/pi)*t;      % Input function
aa = -pi;               % Interval for integral
bb = pi;                % Interval for integral
N = 3;                  % Number of coefficients b
M = 1000;               % Number of step in fun. trapezoidal
sn = 0;

syms t b(n) x

% Function for calculate Sn(t):

for n = 1:1:N
    sn = sn + b(n)*sin(n*t);
end

% Function for calculate E:

fun_for_int = (sn-f)^2;
E = int(fun_for_int, t, aa, bb);

% Partial derivatives for n steps:
syms bn

for ii = 1:1:N
E_i = subs(E,b(ii), bn);                    % Create new equation E_i with coefficient b(ii) for partial derivative 
coef_b = diff(E_i, bn);                     % Partial derivative
b_n(ii) = double(solve(coef_b == 0 , bn));  % Solving coefficient b_n

fprintf('Coefficient b(%.f) from partial derivation is %.4f. \n \n', ii, b_n(ii)) % Print results from partial derivation
end

for ii = 1:1:N
b_n_in = integrate_coeffs(f, N, M);    
fprintf('Coefficient b(%.f) from integrate is %.4f. \n \n', ii, b_n_in(ii)) % Print results from integrate
end

for ii = 1:1:N
Error(ii) = abs(b_n(ii)-b_n_in(ii));
fprintf('Error for b(%.f) from integrate and for b(%.f) from parcial derivation is %.f. \n \n', ii, ii, Error(ii)) % Print error
end
