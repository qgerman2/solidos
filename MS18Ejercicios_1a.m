%ejercicio 1 a
%fuerza externa uniaxial permite decir que esfuerzo = F / A0
F = 10000; %newton
A = pi * (50^2 - 44^2) / 4; %mm2
o = [F / A, 0, 0;
    0, 0, 0;
    0, 0, 0];
e = vector6_a_tensor(flexibilidad(210000, 0.27) * tensor_a_vector6(o));
% SOLUCION 1 utilizar las ecuaciones para encontrar la deformacion 11 rotada, 
% esta solución usa la guia

e11_30grados = e(1,1) / 2 * (1 - 0.27 + cos(2 * deg2rad(30)) + 0.27 * cos(2 * deg2rad(30))) * 10 ^ 6;
e11_30grados

e11_75grados = e(1,1) / 2 * (1 - 0.27 + cos(2 * deg2rad(75)) + 0.27 * cos(2 * deg2rad(75))) * 10 ^ 6;
e11_75grados

e11_120grados = e(1,1) / 2 * (1 - 0.27 + cos(2 * deg2rad(120)) + 0.27 * cos(2 * deg2rad(120))) * 10 ^ 6;
e11_120grados

%SOLUCION 2 rotar el tensor esfuerzo, y luego sacar la deformación con la
%ley de hooke
o_30grados = rotar_plano(o, 30);
e_30grados = vector6_a_tensor(flexibilidad(210000, 0.27) * tensor_a_vector6(o_30grados)) * 10 ^ 6;
e_30grados(1,1)

o_75grados = rotar_plano(o, 75);
e_75grados = vector6_a_tensor(flexibilidad(210000, 0.27) * tensor_a_vector6(o_75grados)) * 10 ^ 6;
e_75grados(1,1)

o_120grados = rotar_plano(o, 120);
e_120grados = vector6_a_tensor(flexibilidad(210000, 0.27) * tensor_a_vector6(o_120grados)) * 10 ^ 6;
e_120grados(1,1)