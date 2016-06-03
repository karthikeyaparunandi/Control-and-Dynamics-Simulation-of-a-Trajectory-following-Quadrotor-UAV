
function plot_quad(phi,theta,psi,i,j,k)
axes('xlim',[-40,40],'ylim',[-40,40],'zlim',[-50,50]);
 view(3);
 grid on;
axis equal;
hold on;
xlabel('x');
ylabel('y');
zlabel('z');
%syms theta psi phi;

Rz=[cos(psi) sin(psi) 0;-sin(psi) cos(psi) 0;0 0 1];
Ry =[cos(theta) 0 -sin(theta);0 1 0;sin(theta) 0 cos(theta)];
Rx =[1 0 0;0 cos(phi) sin(phi);0 -sin(phi) cos(phi)];
% %surf([1 0],[2 1],[3 2]);
R=Rz*Ry*Rx;
 X1=R*[5; 0; 0;]+[i;j;k];
 X2=R*[-5; 0; 0;]+[i;j;k];
 X3=R*[0;5;0]+[i;j;k];
 X4=R*[0;-5;0]+[i;j;k];
 plot3([X1(1) X2(1)],[X1(2) X2(2)],[X1(3) X2(3)],[X3(1) X4(1)],[X3(2) X4(2)],[X3(3) X4(3)],'-','LineWidth',3);
 %hold on;
 spheres(X1,X2,X3,X4);
 %plot3([X3(1) X4(1)],[X3(2) X4(2)],[X3(3) X4(3)],'-b','LineWidth',4);
%   figure(2);
%   axes('xlim',[0,20],'ylim',[-10,10]);
%  plot(t,theta,'-'); 
 %circle(5, 0,1);
% viscircles([X1(1) X1(2)],2);
% viscircles([0+i 5],2);
% viscircles([-5+i 0],2);
% viscircles([0+i -5],2);
% viscircles([0+i 0],1);
hold off;
pause(1.0e-200);
