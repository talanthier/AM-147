clear; clc;

t_initial = 0; t_final = 100;
init_cond = [995 5 0 0];

% ode45
[t,y] = ode45(@SIRD_dynamics, [t_initial t_final], init_cond);
plot(t,y(:,1),'-b',t,y(:,2),'-r', t,y(:,3),'-g', t,y(:,4),'-k','LineWidth',1.5)
hold on;
xlabel('Time t')
legend('Susceptible','Infected','Recovered', 'Deceased')

% 4th order Runge Kutta
[t_rk,y_rk] = FixedStepRK4(@SIRD_dynamics, [t_initial t_final], init_cond, 0.5);

plot(t_rk, y_rk(:,1),'bo',t_rk,y_rk(:,2),'ro', t_rk,y_rk(:,3),'go', t_rk,y_rk(:,4),'ko','LineWidth',1.5)
%xlabel('Time t')
legend('Susceptible','Infected','Recovered', 'Deceased')
