function a=accln(F,angles)
gravity=[0;0;-9.8];
mass=0.1;
phi=angles(1);
theta=angles(2);
psi=angles(3);
R1=rotation([phi;theta;psi;]);
% [cos(psi)*cos(theta)-sin(phi)*sin(psi)*sin(theta) -cos(phi)*sin(psi) cos(psi)*sin(theta)+cos(theta)*sin(phi)*sin(psi);
%     cos(theta)*sin(psi)+cos(psi)*sin(phi)*sin(theta) cos(phi)*cos(psi)  sin(psi)*sin(theta)-cos(phi)*cos(theta)*sin(phi);
%     -cos(phi)*sin(theta) sin(phi) cos(phi)*cos(theta)];
a=gravity+(1/mass)*R1*[0;0;F;];
end
