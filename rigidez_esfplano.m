%matriz de rigidez para pasar deformaciones a esfuerzos
%caso esfuerzo plano ozz=oxz=oyz=0
%young en MPa
%al multiplicar, las deformaciones axiales deben estar en gama (gama = 2 * epsilon)
function r = rigidez_esfplano(young, poisson)
    f = flexibilidad_esfplano(young, poisson);
    r = inv(f);
end