clear; clc; format long;

hold on;
for j = 1:50
    x_k = (rand());
    for k = 1:20
        x_k(end+1) = 0.5+0.5*sin(x_k(end));
    end
    plot(0:20,x_k)
end
xlabel('Recursion Index $k$', 'Interpreter', 'latex')
ylabel('$x_k$','Interpreter', 'latex')
set(get(gca,'ylabel'),'rotation',0,'HorizontalAlignment','right')
title('Recursion Index $k$ vs $x_k$','Interpreter','latex')
