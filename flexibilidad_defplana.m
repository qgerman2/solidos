%matriz de flexibilidad para pasar esfuerzos a deformaciones
%caso deformacion plana ezz=exz=eyz=0
%young en MPa, deformacion axial en epsilon (epsilon = gama / 2)
function f = flexibilidad_defplana(young, poisson)
    r = rigidez_defplana(young, poisson);
    f = inv(r);
end