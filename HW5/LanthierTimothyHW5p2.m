close all; clear; clc;
% Solving Ay = b where y = [p1; p2; p3; q1; q2; r]
A = [0 0 1 0 1 1;
     1 0 0 1 0 1;
     1 2 1 1 1 1;
     1 2 1 -1 -1 1;
     1 4 4 1 2 1;
     4 4 1 2 1 1];
b = [6; 6; 3; 7; 2; 6;];
y = A\b;
P = [y(1) y(2);
     y(2) y(3)]
q = [y(4); y(5);]
r = y(6)

% Sanity check.
x1 = [0; 1];
f1 = x1.'*P*x1 + q.'*x1 + r;

x2 = [1; 0];
f2 = x2.'*P*x2 + q.'*x2 + r;

x3 = [1; 1];
f3 = x3.'*P*x3 + q.'*x3 + r;

x4 = [-1; -1];
f4 = x4.'*P*x4 + q.'*x4 + r;

x5 = [1; 2];
f5 = x5.'*P*x5 + q.'*x5 + r;

x6 = [2; 1];
f6 = x6.'*P*x6 + q.'*x6 + r;
