% Afaptive integration by Midpoint method or Trapezoidal method
function result = adaptive_integration(f, a, b, eps, method)
    
    c = 1;
    n(1,c) = 1;
    initial_integration = 0;
    
    if method == 1
        result(1, c) = midpoint(f, a, b, n(1,c));
        error = result(1) - initial_integration;
        while eps < error
            c = c+1;
            n(1, c) = n(1,c-1)*2;
            result(1, c) = midpoint(f, a, b, n(1,c));
            error(1, c) = abs(result(c) - result(c-1));       
        end
          
    elseif method == 0
        result(1,c) = trapezoidal(f, a, b, n(1,c)); 
        error = result(1) - initial_integration;
        while eps < error
            c = c+1;
            n(1, c) = n(1,c-1)*2;
            result(1, c) = trapezoidal(f, a, b, n(1,c));
            error(1, c) = abs(result(c) - result(c-1)); 
        end  
        
    elseif 0 > method
        fprintf('Method is not correct, your method input method is: %.1f, incorrect method. \n ', method) 
    elseif 1 < method
        fprintf('Method is not correct, your method input method is: %.1f, incorrect method. \n ', method) 
    end    
    
    fprintf('Result is: %.10f and Number of elements are: %.0f and Error is: %.15f.\n', result(c), n(c), error(c))
    
    semilogy (n,error)
    xlabel('Numbers of elements')
    ylabel('Error')
    ylim([1e-10 1e-1])
 end