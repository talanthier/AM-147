close all; clear; clc;
syms t;
g = @(t) (t.^7-5)/(7*t.^6);

x=(2); % sets initial guess
for k = 1:6
    x(k+1) = x(k)-g(x(k));  
end
% Indices are different. So x(1) = x_0, x(7) = x_6
x
x_est = x(end)
x_true = power(5,1/7);
rel_error = abs(x_est - x_true)/abs(x_true)