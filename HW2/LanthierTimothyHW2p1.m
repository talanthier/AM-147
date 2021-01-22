close; clear; clc;
exp_i = 0;
for j = 0:9
    exp_i = exp_i+((-5)^j)/factorial(j);
end
exp_i;

temp_sum = 0;
for k = 0:9
    temp_sum = temp_sum+(5^k)/factorial(k);
end
exp_ii = 1/temp_sum;

relative_error_i = abs(exp(-5)-exp_i)/abs(exp(-5))
relative_error_ii = abs(exp(-5)-exp_ii)/abs(exp(-5))