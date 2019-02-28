function e = automat(f)

  M = 500;
  N = 3;
  p = 0;
  
%   e = zeros(20^3,4);
 
   for i = -1:0.1:1
       b(1,1) = i;     
       for j = -1:0.1:1
           b(1,2) = j;
           for k = -1:0.1:1
               b(1,3) = k;
               error_calculation(b,f,M);
               p = p + 1; 
               e(p,1) = error_calculation(b,f,M);
               e(p,2) = b(1,1);
               e(p,3) = b(1,2);
               e(p,4) = b(1,3);
           end    
       end    
   end
   
[i v]=min(e(:,1));
b1 = e(v,2);
b2 = e(v,3);
b3 = e(v,4);

fprintf('First coefficient b1 is: %.2f, second : %.2f and third: %.2f \n',b1,b2,b3)

b = [b1,b2,b3];

plot_compare(f,N,M,b)
end


