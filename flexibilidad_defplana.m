%matriz de flexibilidad para pasar esfuerzos a deformaciones
%caso deformacion plana ezz=exz=eyz=0
%young en MPa
%al multiplicar el resultado entregara las deformaciones axiales como gama (gama = 2 * epsilon)
function f = flexibilidad_defplana(young, poisson)
    r = rigidez_defplana(young, poisson);
    f = inv(r);
end