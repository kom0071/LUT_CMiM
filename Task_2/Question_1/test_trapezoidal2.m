%% Original function
  
  f = @(x) 6*x - 4;
  F = @(x) 3*x^2 - 4*x; %Anti-derivative
  
  tol = 1e-14;
  a = 1.2;
  b = 4.4;
  expected = F(b) - F(a);
  n = 1;
  
  numerical = trapezoidal(f, a, b, n); 
  err = abs(expected - numerical);
  assert(err < tol, 'error=%g > tol=%g', err, tol);


%% Explore rounding errors with large numbers
  
  f = @(x) 6*10^8*x - 4*10^6;
  F = @(x) 3*10^8*x^2 - 4*10^6*x; %Anti-derivative
  
  tol = 1e-6;
  a = 1.2;
  b = 4.4;
  expected = F(b) - F(a);
  n = 1;
  
  numerical = trapezoidal(f, a, b, n); 
  err = abs(expected - numerical);
  assert(err < tol, 'error=%g > tol=%g', err, tol);
