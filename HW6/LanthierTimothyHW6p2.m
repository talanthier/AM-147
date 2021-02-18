close all; clear; clc;

for k = 5:8
    A = [1 1;
        10^(-k) 0;
        0 10^(-k)];
    b = [-10^(-k);
        1+10^(-k);
        1-10^(-k)];
    xhat_analytical = [1; -1]
    xhat_QR = A\b
    xhat_normal = (A'*A)\(A'*b)
end

