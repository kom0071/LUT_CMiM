close all
clc

%Initials conditions
a=0.1;
b=0.2;
t=linspace(0,10,100);
omega=1;
phi= (pi/6)+omega.*t;

%Estimation for Newton-Raphson’s method 
x_i=[0.5;1];

%Accuracy
eps=1e-5;

x=zeros(2,length(t));
v=zeros(2,length(t));
ac=zeros(2,length(t));

for i=1:length(t)
%Equations of position 
%u(1)=theta, u(2)=d   
F=@(u) [a*cos(phi(i))+b*cos(u(1))-u(2);
        a*sin(phi(i))-b*sin(u(1))];
%Jacobian matrix  
J=@(u) [-b*sin(u(1)) -1;
        -b*cos(u(1))  0];

[x(:,i),~] = NR_method(F, J, x_i, eps);

% Equations of velocities
% v(1)=theta prime (velocity), v(2)=piston velocity
F=@(v) [-a*sin(phi(i))*omega-b*sin(x(1,i))*v(1)-v(2);
        +a*cos(phi(i))*omega-b*cos(x(1,i))*v(1)];
   
[v(:,i),~] = NR_method(F, J, x_i, eps);

% Equations of acceleration
% a(1)=theta double prime (accel), a(2)=piston accel    
F=@(ac) [a*cos(phi(i))*omega^2-b*cos(x(1,i))*(v(1,i))^2-b*sin(x(1,i))*ac(1)-ac(2);
        a*sin(phi(i))*omega^2+b*sin(x(1,i))*(v(1,i))^2-b*cos(x(1,i))*ac(1)];
   
[ac(:,i),~] = NR_method(F, J, x_i, eps);
end

%rod kinematics plot
figure
plot(t,x(1,:))
hold on
plot(t,v(1,:))
plot(t,ac(1,:))
legend('Angle [-]','Angular veloctity [rad/s]','Angular acceleration [rad/2^2]')

%piston kinematics plot
figure
plot(t,x(2,:))
hold on
plot(t,v(2,:))
plot(t,ac(2,:))
legend('Displacement [m]','Velocity [m/s]','Acceleration [m/s^2]')


