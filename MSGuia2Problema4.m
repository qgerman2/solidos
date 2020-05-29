fprintf('3 calcule la deformacion para el siguiente esfuerzo\n')
o = [200, -140, 0;
    -140, 450, 0;
    0, 0, -400];
o_vector = tensor_a_vector6(o);
f = flexibilidad(200000, 0.33);
e_resultante = f * o_vector;
o
e_resultante

fprintf('4 calcule el esfuerzo para la siguiente deformacion\n')
e = [0.04,       -0.120 / 2, 0;
    -0.120 / 2,  0,          0;
    0,           0,          -0.09];
e_vector = tensor_a_vector6(e);
r = rigidez(200000, 0.33);
o_resultante = r * e_vector;
e
o_resultante

fprintf('7 calcule esfuerzo plano para la siguiente deformacion\n')
e = [0.01, 0.025 / 2, 0;
    0.025 / 2, -0.08, 0;
    0, 0, 0];
e_vector = tensor_a_vector3(e);
r = rigidez_esfplano(200000, 0.33);
o_resultante = r * e_vector;
e
o_resultante

fprintf('9 rotar 50 grados el esfuerzo del item anterior\n')
o = vector3_a_tensor(o_resultante);
o_50grados = rotar_plano(o, 50);
o_50grados