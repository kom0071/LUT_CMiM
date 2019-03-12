clc
close all

% Input data
omega = 5;
P = 2*pi/omega;
dt = P/60;
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
for n = 1:N_t
    v(n+1) = v(n) - dt*omega^2*u(n);
    u(n+1) = u(n) + dt*v(n+1);
end

% plot(t, u, 'b-', t, X_0*cos(omega*t), 'r--');
% legend('numerical', 'exact','location','northwest');
% xlabel('t');

[ep, ec] = osc_energy(u, v, omega);
sum_e = ec + ep;
plot(t,sum_e)
hold on
plot(t,ep)
plot(t,ec)
legend('Sum energy', 'Potencial energy', 'Kinetic energy')
xlabel('t [s]')
ylabel('Energy [J]')