function spheres(a,b,c,d)
[x,y,z] =sphere();
r=1;
surf(r*x+a(1),r*y+a(2),r*z+a(3));
surf(r*x+b(1),r*y+b(2),r*z+b(3));
surf(r*x+c(1),r*y+c(2),r*z+c(3));
surf(r*x+d(1),r*y+d(2),r*z+d(3));