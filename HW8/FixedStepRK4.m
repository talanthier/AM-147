function [t,y] =  FixedStepRK4(f, t_interval, y0, delta_t)
    y = y0;
    t= t_interval(1):delta_t:t_interval(2); % get vector of t values from step size and t interval
    for k = 1:length(t)-1
        k1 = delta_t*f(t(k), y(k,:)'); 
        k2 = delta_t*f(t(k)+delta_t/2, y(k,:)'+k1/2);
        k3 = delta_t*f(t(k)+delta_t/2, y(k,:)'+k2/2);
        k4 = delta_t*f(t(k)+delta_t, y(k,:)'+k3);
        y(k+1,:) = y(k,:)' + (1/6)*(k1+2*k2+2*k3+k4); % adds new row to y
    end
end