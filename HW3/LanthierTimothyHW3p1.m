close all; clear; clc;
syms x;
L5 = @(x) (1/120)*(-x.^5 + 25*x.^4 - 200*x.^3 + 600*x.^2 - 600*x + 120);
y = L5(x);

figure(1);
fplot(L5,[0,13]);
grid on;
% From our plot, we can see that there are roots in the following
% intervals: (0,1), (1,2), (3,4), (6.5,7.5), (12,13).

c1 = bisection(L5,0,1,10^-4)
c2 = bisection(L5,1,2,10^-4)
c3 = bisection(L5,3,4,10^-4)
c4 = bisection(L5,6.5,7.5,10^-4)
c5 = bisection(L5,12,13,10^-4)