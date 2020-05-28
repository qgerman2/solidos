%ejercicio 1b
%calcular tensores esfuerzo y deformacion enteros con roseta y condicion de
%esfuerzo plano
[e, o] = roseta_esfplano(30, 75, 120, 10, 5, 1, 210000, 0.27);
disp(o)
%angulos
[o1, o2] = direcciones_principales(o);
disp(o1);
disp(o2)
angulo_corte_0 = o1 + 90;
angulo_corte_maximo = angulo_corte_0 + 45;
disp(angulo_corte_maximo)
%rotar el esfuerzo por el angulo con corte maximo
o_corte_maximo = rotar_plano(o, angulo_corte_maximo);
disp(o_corte_maximo)