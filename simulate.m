%function simulate(input)

%Set the time period
t_i= 0;
t_f = 40;
dt=0.05;
time = t_i:dt:t_f;

%state
x=[0;10;0];
x_dot=zeros(3,1);
theta=zeros(3,1);
%deviation=100;
theta_dot = zeros(3,1);%deg2rad(2 * deviation * rand(3, 1) - deviation);
%input=9.8*0.1*1/4*[1;1;1;1];
%State Update
for t=time
   % i=input;
    
    omega= thetadot2omega(theta_dot,theta);
    [F,M]=controller(t,x,x_dot,theta,omega);
    a= accln(F,theta);
    omega_dot=ang_accln(M,omega);
    omega=omega+dt*omega_dot;
    theta_dot= omega2thetadot(omega, theta);
    theta= theta+dt*theta_dot;
    x_dot=x_dot+dt*a;
    x=x+dt*x_dot;
    error=x-[0;10+t;0;]
    plot_quad(-theta(1),-theta(2),-theta(3),x(1),x(2),x(3));
   % axes('xlim',[0,40],'ylim',[-5,5]);
 
     %plot(t,x,'-b');
     %hold on;
    % pause(0.0001);
end