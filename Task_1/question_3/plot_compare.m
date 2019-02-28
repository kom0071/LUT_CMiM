function plot_compare(f,N,M,b)
    t = linspace(-pi,pi,M);

    [sn] = sinesum(t,b);
    plot(t,f(t))
    hold on
    plot(t,sn)
end

