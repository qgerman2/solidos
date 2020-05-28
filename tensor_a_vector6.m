%transforma un tensor simetrico a un vector vertical de 6 componentes
%entrada [11, 12, 13;
%         12, 22, 23;
%         13, 23, 33]
%salida [11; 22; 33; 23; 13; 12]
function v = tensor_a_vector6(t)
    v = [t(1,1); t(2,2); t(3,3); t(2,3); t(1,3); t(1,2)];
end