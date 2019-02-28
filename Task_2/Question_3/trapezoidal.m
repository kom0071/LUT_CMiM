function result_integral_trapezoidal = trapezoidal(f, a, b, n, ii)
    h = (b-a)/n;
    result = 0.5*f(a)*sin(ii*a) + 0.5*f(b)*sin(ii*b);
    for i = 1:(n-1)
        result = result + f(a + i*h)*sin(ii*(a + i*h));
    end
    result_integral_trapezoidal = h*result;
end