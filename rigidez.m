%matriz de rigidez para pasar deformaciones a esfuerzos
%caso general
%young en MPa
%al multiplicar, las deformaciones axiales deben estar en gama (gama = 2 * epsilon)
function r = rigidez(young, poisson)
    lambda = (young * poisson) / ((1 + poisson) * (1 - 2 * poisson));
    u = young / (2 * (1 + poisson));
    r = [lambda + 2 * u, lambda, lambda, 0, 0, 0;
        lambda, lambda + 2 * u, lambda, 0, 0, 0;
        lambda, lambda, lambda + 2 * u, 0, 0, 0;
        0, 0, 0, u, 0, 0;
        0, 0, 0, 0, u, 0;
        0, 0, 0, 0, 0, u];
end