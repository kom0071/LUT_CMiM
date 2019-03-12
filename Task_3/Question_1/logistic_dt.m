clc
close all

% Intup data

f = @(u, t) 0.1*(1 - u/500)*u;
U_0 = 100;
T = 60;
N = input('Number of plots:'); 
delta_t = 30;

% Plot graph 1 and 2 for first corresponding
dt_1 = 2^(-0)*delta_t;
[u_2, t_2] = ode_FE(f, U_0, dt_1, T);
dt_2 = 2^(-1)*delta_t;
[u_3, t_3] = ode_FE(f, U_0, dt_2, T);
plot(t_2,u_2)
hold on
plot(t_3,u_3)
xlabel('t')
ylabel('u')
legend(['Step = ', num2str(dt_1) ,''],['Step = ', num2str(dt_2) ,''])

for k = 1:1:N
    r = input('If you are not satisfied with result, press 1.\n');
    if r == 1
    dt = 2^(-k)*delta_t;
    [u_1, t_1] = ode_FE(f, U_0, dt, T);
    close all
    % Plot graph 1
    plot(t_1,u_1)
    hold on
    % Plot graph 2
    plot(t_2,u_2)
    xlabel('t')
    ylabel('u')
    legend(['Step = ', num2str(dt) ,''],['Step = ', num2str(dt*2) ,''])
    u_2 = u_1;
    t_2 = t_1;
    else
        break
    end
end




