close all
clear all
clc

%Input data for calculation question b: 

N = 3;
M = 500;
t = linspace(-pi,pi,M);
b = [4, -3];
f=@(t) (1/pi)*t;



%Question b - chech the results from function sinesum(t,b) with
test_sinesum(t,b);

hand_calculation = test_sinesum(t,b); %Call function test_sinesum(t,b) with hand calculation
func_calculation = sinesum(t,b); %Call function sinesum(t,b)

Error_1 = hand_calculation(1,1)-func_calculation(1,1); %Calculation error for first result
Error_2 = hand_calculation(1,2)-func_calculation(1,2); %Calculation error for second result 

%Print result and value of error

fprintf('Result from Function Sinesum: %f and %f \n',func_calculation(1,1),func_calculation(1,2))
fprintf('Result from Function Test Sinesum (hand calculation): %f and %f \n',hand_calculation(1,1),hand_calculation(1,2))
fprintf('Error of calculation: %f and %f \n',Error_1,Error_2)

%Final results for b1 and b2 and b3

automat(f);

