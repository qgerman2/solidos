o = [100, -200, 0;
     -200, -80, 0;
     0, 0, 0];

fprintf('Tensor esfuerzo\n');
disp(o);

fprintf('Tensor esfuerzo a 30 grados\n');
disp(rotar_plano(o, 30));

fprintf('Esfuerzos principales\n');
[o1, o2] = direcciones_principales(o);
disp(o1);
disp(rotar_plano(o, o1));
disp(o2);
disp(rotar_plano(o, o2));

fprintf('Corte maximo\nAngulo');
disp(o1 + 45);
disp(rotar_plano(o, o1 + 45));