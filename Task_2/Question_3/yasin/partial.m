% PROGRAM FOR CALCULATING PARTIAL DERIVATIVES OF THE APPROXIMATION ERROR OF
% SINESUM AND ORIGINAL FUNCTION
clc, clear

aa = -pi; bb = pi;
N = 3;
f = @(t) (1/pi)*t;
syms t b(n) x 

SN = 0;
for n = 1:1:N
    SN = SN + b(n)*sin(n*t)
end

E = int((SN - f)^2,t, aa, bb)

index = input('Enter index of coefficient b: ');
disp(' ');
%s = genvarname(['b',  num2str(index)]);
syms b_n;

E = subs(E,b(index), b_n)
coef_b = diff(E, b_n)
coef_b_n = eval(coef_b)
b_n = solve(coef_b == 0 , b_n);
coef_b = double(b_n);
disp(['Found coefficient b_' num2str(index) ' is: ' num2str(coef_b)])

% verification with symbolic formula
n = index;
b_nn = (1/pi)*int(f*sin(n*t),t,-pi, pi);
b_nn = double(b_nn);
disp(['Computed coefficient b_' num2str(index) ' is: ' num2str(b_nn)])


