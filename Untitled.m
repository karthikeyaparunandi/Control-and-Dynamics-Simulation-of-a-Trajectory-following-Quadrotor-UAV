
plot_quad(0,pi/3,0,0,j)

%[p;q;r]=[cos(theta) 0 -cos(phi)*sin(theta);0 1 sin(phi);sin(theta) 0 cos(phi)*cos(theta)]*[phi_dot;theta_dot;psi_dot];
% 
% kp1=90;
% kp2=90;
% kp3=90;
% 
% kd1=3;
% kd2=3;
% kd3=12;
% 
% kp_phi=9000;
% kp_theta=9000;
% kp_psi=4;
% kd_psi=0.5;
% 
% kd_phi=4;
% kd_theta=4;
% 
% r1des_ddot = des_state.acc(1) + kd1*(des_state.vel(1)-state.vel(1)) + kp1*(des_state.pos(1)-state.pos(1));
% 
% r2des_ddot = des_state.acc(2) + kd2*(des_state.vel(2)-state.vel(2)) + kp2*(des_state.pos(2)-state.pos(2));
% 
% r3des_ddot = des_state.acc(3) + kd3*(des_state.vel(3)-state.vel(3)) + kp3*(des_state.pos(3)-state.pos(3));
% 
% phi_des = (1/params.gravity)*(r1des_ddot*sin(des_state.yaw) - r2des_ddot*cos(des_state.yaw));
% 
% theta_des = (1/params.gravity)*(r1des_ddot*cos(des_state.yaw) + r2des_ddot*sin(des_state.yaw));
% 
% % Thurst
% 
% F = params.mass*(params.gravity+r3des_ddot);
% 
% % Moment
% 
% M=[kp_phi*(phi_des-state.rot(1))+kd_phi*(-state.omega(1));kp_theta*(theta_des-state.rot(2))+kd_theta*(-state.omega(2));kp_psi*(des_state.yaw-state.rot(3))+kd_psi*(des_state.yawdot-state.omega(3))];
% 
% 
% 
% end