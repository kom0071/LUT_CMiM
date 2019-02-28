function plot_approx(f, N, M, filename)
    b = integrate_coeffs(f, N, M);
    t = linspace(-pi,pi,M);

    [sn] = sinesum(t,b);
    plot(t,f(t))
    hold on
    plot(t,sn)
    title('Plot originally function with approximation function')
    print(filename,'-dpdf')
    print(filename,'-depsc')
end

