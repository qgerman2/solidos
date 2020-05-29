%transforma un vector de 3 componentes a un tensor simetrico plano
%entrada [11; 22; 12]
%salida [11, 12, 0;
%        12, 22, 0;
%        0,  0,  0]
function t = vector3_a_tensor(v)
    t = [v(1), v(3), 0;
        v(3), v(2), 0;
        0, 0, 0];
end