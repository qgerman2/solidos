%matriz de flexibilidad para pasar esfuerzos a deformaciones
%caso general
%young en MPa, deformacion axial en epsilon (epsilon = gama / 2)
function f = flexibilidad(young, poisson)
    f = [1, -poisson, -poisson, 0, 0, 0;
        -poisson, 1, -poisson, 0, 0, 0;
        -poisson, -poisson, 1, 0, 0, 0;
        0, 0, 0, 1 + poisson, 0, 0;
        0, 0, 0, 0, 1 + poisson, 0;
        0, 0, 0, 0, 0, 1 + poisson];
    f = f ./ young;
end