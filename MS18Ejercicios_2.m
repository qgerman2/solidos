%ejercicio 2

%este ejercicio es mas rebuscar que programacion
young = 210000;
poisson = 0.3;
%con young, poisson, 2 rosetas perpendiculares y una condicion de esfuerzo
%plano, podemos conocer la diagonal del tensor deformacion
e_diag = roseta2_esfplano(30.88, 30.88, young, poisson) * 10 ^ -6;

%justo porque el esfuerzo yy es la mitad del esfuerzo xx, la traza del
%tensor esfuerzo puede quedar definida como una sola variable, y como
%conocemos la traza de la deformacion podemos relacionarlas

e_traza = e_diag(1) + e_diag(2) + e_diag(3);

K = young / (3 * (1 - 2 * poisson));

%p = K * e_traza = 1/3 * o_traza

o_traza = 3 * K * e_traza;

%o_traza = oyy * 2 + oyy

oyy = o_traza / 3;

%oyy = p * d / (4 * t)
%t = p * d / (4 * oyy)

t = 2 * 300 / (4 * oyy);
t
