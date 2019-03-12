function plot_approx(f, N, M, filename)
    b = integrate_coeffs(f, N, M); % Call integration functio for calculet ceff. b
    t = linspace(-pi,pi,M);

    [sn] = sinesum(t,b); % Sinesum function
    plot(t,f(t)) % Plot original function
    hold on
    plot(t,sn) % Plot aproximation function
    title('Plot originally function with approximation function')
    print(filename,'-dpdf')
    print(filename,'-depsc')
end

