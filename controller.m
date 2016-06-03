function [F, M] = controller(t,a ,b,c,d)
%CONTROLLER  Controller for the quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [x; y; z], state.vel = [x_dot; y_dot; z_dot],
%   state.rot = [phi; theta; psi], state.omega = [p; q; r]
% 
%   des_state: The desired states are:
%   des_state.pos = [x; y; z], des_state.vel = [x_dot; y_dot; z_dot],
%   des_state.acc = [x_ddot; y_ddot; z_ddot], des_state.yaw,
%   des_state.yaw_dot
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls
% =================== Your code goes here ===================
state.pos=a;
state.vel=b;
state.rot=c;
state.rot;
state.omega=d;
des_state.pos=[0;10+t;0]; %10*[sin(t);cos(t);0];
des_state.vel= [0;1;0];%10*[cos(t);-sin(t);0];
des_state.acc= [0;0;0];%10*[-sin(t);-cos(t);0];
des_state.yaw=0;
des_state.yaw_dot=0;
kp1=3;
kp2=3;
kp3=6.0;

kd1=1;
kd2=1;
kd3=4;

kp_phi=0.3;
kp_theta=0.3;
kp_psi=0.3;

kd_psi=0.2;
kd_phi=0.2;
kd_theta=0.2;

r1des_ddot = des_state.acc(1) + kd1*(des_state.vel(1)-state.vel(1)) + kp1*(des_state.pos(1)-state.pos(1));

r2des_ddot = des_state.acc(2) + kd2*(des_state.vel(2)-state.vel(2)) + kp2*(des_state.pos(2)-state.pos(2));

r3des_ddot = des_state.acc(3) + kd3*(des_state.vel(3)-state.vel(3)) + kp3*(des_state.pos(3)-state.pos(3));

phi_des = (1/9.8)*(r1des_ddot*sin(des_state.yaw) - r2des_ddot*cos(des_state.yaw));

theta_des = (1/9.8)*(r1des_ddot*cos(des_state.yaw) + r2des_ddot*sin(des_state.yaw));

% Thurst

F =0.1*(9.8+r3des_ddot);
% figure(2);
% plot(t,F);
% Moment

M=[kp_phi*(phi_des-state.rot(1))+kd_phi*(-state.omega(1));kp_theta*(theta_des-state.rot(2))+kd_theta*(-state.omega(2));kp_psi*(des_state.yaw-state.rot(3))+kd_psi*(des_state.yaw_dot-state.omega(3))];
%M = zeros(3,1);

% =================== Your code ends here ===================

end
