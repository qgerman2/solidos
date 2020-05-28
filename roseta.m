%angulos en grados, deformaciones en microstrain
function e = roseta(a1, a2, a3, e1, e2, e3)
    a1 = deg2rad(a1);
    a2 = deg2rad(a2);
    a3 = deg2rad(a3);
    %encontrar deformacion xx, yy y xy
    syms exx eyy exy
    eqn1 = (exx + eyy) / 2 + (exx - eyy) / 2 * cos(2 * a1) + exy * sin(2 * a1) == e1;
    eqn2 = (exx + eyy) / 2 + (exx - eyy) / 2 * cos(2 * a2) + exy * sin(2 * a2) == e2;
    eqn3 = (exx + eyy) / 2 + (exx - eyy) / 2 * cos(2 * a3) + exy * sin(2 * a3) == e3;
    S = vpasolve(eqn1, eqn2, eqn3);
    e = [S.exx, S.exy;
        S.exy, S.eyy];
end