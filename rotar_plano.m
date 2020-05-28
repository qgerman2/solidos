%rota un tensor esfuerzo plano o tensor deformacion plana
function r = rotar_plano(m, a)
    a = deg2rad(a);
    R = [cos(a), -sin(a), 0;
        sin(a), cos(a), 0;
        0, 0, 1];
    r = R' * m * R;
end