close all; clear; clc;

set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

%% generate synthetic data for the noisy signal
t = (1:500)';
x = 2*sin(0.1*t) + 3*cos(0.01*t) + 4*sin(0.02*t);

noise = -ones(size(x)) + 2*rand(size(x));
% generate noisy signal
x_noisy = x + noise;

figure(1)
plot(t,x,'-k','LineWidth',2)
hold on
plot(t,x_noisy,'-b','LineWidth',1)
hold on
set(gca,'FontSize',30)
xlabel('$t$','FontSize',35); ylabel('$x$','FontSize',35,'rotation',0)
axis tight

%% recover an estimate xhat for the original unknown x, only from x_noisy

% your code here (write as many lines as you need here)

I = eye(500);
M = diag(ones([499,1]),1); % places 1s on diagonal to the right of main diagonal
M = M + (-1*eye(500)); % places -1s on main diagonal
M(end,:) = []; % removes last row to get our desired matrix with proper dimensions


beta = [1; 10; 100];

line_style = {'-','-.','--'}; line_color = {'c','m','g'};

for j=1:length(beta)
    % finish the following line
    xhat(:,j) = cat(1,I,sqrt(beta(j))*M) \ cat(1,x_noisy, zeros([499,1]));
    % Here, A = cat(1,I,sqrt(beta(j))*I_star), b = cat(1,x_noisy,
    % sqrt(beta(j))*x_star);
    
    plot(t,xhat(:,j),'color',line_color{j},'linestyle',line_style{j},'LineWidth',2)
    hold on
end
legend('$x_{\rm{true}}$','$x_{\rm{noisy}}$','$\beta = 1$','$\beta = 10$','$\beta = 100$')
hold off
