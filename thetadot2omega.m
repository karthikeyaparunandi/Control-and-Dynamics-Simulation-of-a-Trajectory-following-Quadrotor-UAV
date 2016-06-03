function omega=thetadot2omega(thetadot,theta)
omega=([cos(theta(2)) 0 -cos(theta(1))*sin(theta(2));0 1 sin(theta(1));sin(theta(2)) 0 cos(theta(1))*cos(theta(2))]*thetadot);


end
