%matriz de flexibilidad para pasar esfuerzos a deformaciones
%caso esfuerzo plano ozz=oxz=oyz=0
%young en MPa, deformacion axial en epsilon (epsilon = gama / 2)
function f = flexibilidad_esfplano(young, poisson)
    f_general = flexibilidad(young, poisson);
    f = f_general;
    %eliminar filas 3, 4 y 5
    f(5,:) = [];
    f(4,:) = [];
    f(3,:) = [];
    %eliminar columnas 3, 4, y 5
    f(:,5) = [];
    f(:,4) = [];
    f(:,3) = [];
end