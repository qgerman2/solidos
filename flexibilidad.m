%matriz de flexibilidad para pasar esfuerzos a deformaciones
%caso general
%young en MPa
%al multiplicar el resultado entregara las deformaciones axiales como gama (gama = 2 * epsilon)
function f = flexibilidad(young, poisson)
    f = [1, -poisson, -poisson, 0, 0, 0;
        -poisson, 1, -poisson, 0, 0, 0;
        -poisson, -poisson, 1, 0, 0, 0;
        0, 0, 0, 2 * (1 + poisson), 0, 0;
        0, 0, 0, 0, 2 * (1 + poisson), 0;
        0, 0, 0, 0, 0, 2 * (1 + poisson)];
    f = f ./ young;
end