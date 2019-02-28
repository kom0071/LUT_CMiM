function trial(f,N)
    
    M = 500;
    while true
        close all
        for i = 1:N
            b(1,i)=input(['Input ',num2str(N),' coefficients b(',num2str(i),') \n']);
        end

        plot_compare(f,N,M,b)
        E = error_calculation(b,f,M)
        
        x = input('Press to 0 if you have a good results \n');
        if x == 0
            break
        end    
    end    
end

