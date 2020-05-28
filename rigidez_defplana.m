%matriz de rigidez para pasar deformaciones a esfuerzos
%caso deformacion plana ezz=exz=eyz=0
%young en MPa
%al multiplicar, las deformaciones axiales deben estar en gama (gama = 2 * epsilon)
function r = rigidez_defplana(young, poisson)
    r_general = rigidez(young, poisson);
    r = r_general;
    %eliminar filas 3, 4 y 5
    r(5,:) = [];
    r(4,:) = [];
    r(3,:) = [];
    %eliminar columnas 3, 4, y 5
    r(:,5) = [];
    r(:,4) = [];
    r(:,3) = [];
end