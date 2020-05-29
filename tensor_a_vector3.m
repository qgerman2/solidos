%transforma un tensor simetrico plano a un vector vertical de 6 componentes
%entrada [11, 12, 0;
%         12, 22, 0;
%         0,  0,  0]
%salida [11; 22; 33; 23; 13; 12]
function v = tensor_a_vector3(t)
    v = [t(1,1); t(2,2); t(1, 2)];
end