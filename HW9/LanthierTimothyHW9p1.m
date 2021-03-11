clear; clc;

A = importdata('AdjacencyMatrix.txt');
for i = 1:500
    if A(:,i) == zeros(1,500) % Replaces columns with all 0s with column of all 1s
        A(:,i) = ones(1,500);
    end
end

S = A*inv(diag(ones(1,500)*A));
alpha = 0.25:0.25:1;
colors = ['r','g','b','k'];
p_alpha = zeros(500,4); % used to store final p(alpha)
for i = 1:4
    G = alpha(i)*S + ((1-alpha(i))/500)*ones(500,500);
    v = zeros(50,500);
    v(1,:) = ones(1,500)/500;% random initial guess
    error = 1:50;
    for k = 1:50
       v(k+1,:) = G*v(k,:)';
       norm_constant = norm(G*v(k,:)',2);
       v(k+1,:) = v(k+1,:)/norm_constant;
       error(k) = norm(v(k+1,:)-v(k,:),2)/norm(v(k+1,:),2);
    end
    semilogy(1:50,error,colors(i));
    hold on;
    p_alpha(:,i) = v(end,:); % adds final p(alpha) to p_alpha
end
legend('alpha = 0.25', 'alpha = 0.25', 'alpha = 0.75', 'alpha = 1')

rel_error_25 = norm(p_alpha(:,1)-p_alpha(:,4),2)/norm(p_alpha(:,4),2)*100
rel_error_50 = norm(p_alpha(:,2)-p_alpha(:,4),2)/norm(p_alpha(:,4),2)*100
rel_error_75 = norm(p_alpha(:,3)-p_alpha(:,4),2)/norm(p_alpha(:,4),2)*100
