function sn = sinesum(t,b) 
    for ii = 1:length(t)
        sn(1,ii) = 0;
        for jj = 1:length(b)
            sn(1,ii) = sn(1,ii) + b(1,jj)*sin(jj*t(1,ii));
        end    
    end
end

