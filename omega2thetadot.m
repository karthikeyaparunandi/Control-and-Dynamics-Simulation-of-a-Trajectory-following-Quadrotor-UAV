function theta_dot=omega2thetadot(omega, theta)
X=[cos(theta(2)) 0 -cos(theta(1))*sin(theta(2));0 1 sin(theta(1));sin(theta(2)) 0 cos(theta(1))*cos(theta(2))];
theta_dot=(inv(X)*omega);
end