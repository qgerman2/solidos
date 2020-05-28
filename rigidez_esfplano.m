%matriz de rigidez para pasar deformaciones a esfuerzos
%caso esfuerzo plano ozz=oxz=oyz=0
%young en MPa, deformacion axial en epsilon (epsilon = gama / 2)
function r = rigidez_esfplano(young, poisson)
    f = flexibilidad_esfplano(young, poisson);
    r = inv(f);
end