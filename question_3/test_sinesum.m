function sn_1 = test_sinesum(t,b)

sn_test(1,1) = b(1,1)*sin(1*t(1,1))+b(1,2)*sin(2*t(1,1));
sn_test(1,2) = b(1,1)*sin(1*t(1,2))+b(1,2)*sin(2*t(1,2));

sn_1=sn_test;

end