e = roseta(45, 90, 135, 700, 100, 250);

fprintf('Tensor deformacion\n');
disp(e);

fprintf('Direcciones principales\n')
[e1, e2] = direcciones_principales(e);
disp(e1);
disp(rotar_plano(e, e1));

disp(e2);
disp(rotar_plano(e, e2));

fprintf('Deformacion angular maxima\n');
disp(e1 + 45);
disp(rotar_plano(e, e1 + 45));