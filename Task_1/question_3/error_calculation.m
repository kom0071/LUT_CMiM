function error_final = error_calculation(b,f,M)

t = linspace(-pi,pi,M);
[sn] = sinesum(t,b);
f1 = f(t); 
error_1 = 0;

    for ii = 1:M
        error_1 = error_1 + ((f1(1,ii)-sn(1,ii))^2);
    end

    error_final = error_1^(1/2);
end

