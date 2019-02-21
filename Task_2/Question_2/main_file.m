%Main file for calcute integration

f = @(x) x^2;
a = 0;
b = 2;
method = 1;

result = adaptive_integration(f, a, b, method)

