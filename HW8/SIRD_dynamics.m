function dydt = SIRD_dynamics(t,y)
    % y = [S I R D] and dydt = [dS/dt, dI/dt, dR/dt, dD/dt]
    dydt(1,:) = -(0.45 / 1000)*y(2)*y(1);
    dydt(2,:) = (0.45 / 1000)*y(2)*y(1) - (0.04*y(2)) - (0.01*y(2));
    dydt(3,:) = 0.04 * y(2);
    dydt(4,:) = 0.01 * y(2);
end