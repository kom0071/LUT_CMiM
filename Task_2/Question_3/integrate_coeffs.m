function b_n_in = integrate_coeffs(f, N, M)
    for ii = 1:1:N
        b_n_in(ii) = 1/pi * trapezoidal(f, -pi, pi, M, ii);
    end    
end

