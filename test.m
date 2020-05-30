young = 210000;
poisson = 0.3;

lambda = (young * poisson) / ((1 + poisson) * (1 - 2 * poisson));
u = young / (2 * (1 + poisson));

syms e11 e22
eqn1 = (lambda + 2 * u) * e11 + lambda * e22 == 0;
eqn2 = (lambda + 2 * u) * e22 + lambda * e11 == -300;
S = vpasolve(eqn1, eqn2);
[S.e11, S.e22]

o = [0, 0, 0;
    0, -300, 0;
    0, 0 ,0];
a = flexibilidad(young, poisson) * tensor_a_vector6(o);
[a(1), a(2)]
