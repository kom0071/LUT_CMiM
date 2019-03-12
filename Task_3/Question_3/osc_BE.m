clc
close all

% Input data
omega = 5;
P = 2*pi/omega;
dt = P/2000;
T = 3*P;
N_t = floor(T/dt);
t = linspace(0, N_t*dt, N_t+1);
u = zeros(N_t+1, 1);
v = zeros(N_t+1, 1);  

% Initial condition
X_0 = 2;
u(1) = X_0;
v(1) = 0;

% Step equations forward in time
for n = 2:N_t
    v(n) = (v(n-1) - dt*omega^2*u(n-1))/(1+dt^2*omega^2);
    u(n) = (u(n-1) + dt*v(n-1))/(1+dt^2*omega^2);
end

plot(t, u, 'b-', t, X_0*cos(omega*t), 'r--');
legend('numerical', 'exact','location','northwest');
xlabel('t');