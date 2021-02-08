close all; clear; clc;

set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

n = 5:7;

cc = {'r','g','b'};

for k=1:length(n)
    
    x = linspace(-1,1,n(k))'; y = 1./(1 + 25*x.^2);
    plot(x,y,'o','MarkerSize',12,'MarkerEdgeColor','k','MarkerFaceColor',cc{k})
    set(gca,'FontSize',30)
    xlabel('$x$','FontSize',25); ylabel('$y$','FontSize',25,'rotation',0);
    hold on
    
    % complete the following lines
    X = fliplr(vander(x)); % the coefficient matrix
    c = X\y; % the coefficient vector

    xnew = linspace(-1,1,500)';
    % evaluate the interpolated polynomial at xnew
    ynew = polyval(flipud(c),xnew);
    
    plot(xnew,ynew,'color',cc{k},'LineWidth',2)
end


