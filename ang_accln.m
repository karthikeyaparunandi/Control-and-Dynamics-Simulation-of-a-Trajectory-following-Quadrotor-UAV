function omega_dot=ang_accln(M,omega)
I = 200*[0.00025,   0,          2.55e-6;
     0,         0.000232,   0;
     2.55e-6,   0,          0.0003738];
L=0.086;
%u2=[(inputs(2)-inputs(4));(inputs(3)-inputs(1));(inputs(1) - inputs(2) + inputs(3) - inputs(4))];
omega_dot= (I)\(M-cross(omega,I*omega));

end