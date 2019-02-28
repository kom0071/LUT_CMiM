%% Function test_integrate_coeff
f = @(x) 1;
N = 3;
computed = integrate_coeffs(f, N, 100);
expected = zeros(N,1);
tolerance = eps(1)*1000*ones(N,1);
error = abs(expected - computed);
for ii = 1:1:N
    assert(error(ii,1) < tolerance(ii,1), 'n=%d, err=%g', N, error);
end    