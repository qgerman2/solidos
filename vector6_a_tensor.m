%transforma un vector de 6 componentes a un tensor simetrico
%entrada [11; 22; 33; 23; 13; 12]
%salida [11, 12, 13;
%        12, 22, 23;
%        13, 23, 33]
function t = vector6_a_tensor(v)
    t = [v(1), v(6), v(5);
        v(6), v(2), v(4);
        v(5), v(4), v(3)];
end