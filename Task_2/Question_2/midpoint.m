%Function for calculat integrals by Midpoint method

function result_integration_midpoint = midpoint(f, a, b, n)
    h = (b-a)/n;
    result = 0;
    for i = 0:(n-1)
        result = result + f((a + h/2) + i*h);
    end
    result_integration_midpoint = h*result;
end