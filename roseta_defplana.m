%angulos en grados, deformaciones en microstrain, young en mpa
function [e, o] = roseta_defplana(a1, a2, a3, e1, e2, e3, young, poisson)
    %grados a radian
    a1 = deg2rad(a1);
    a2 = deg2rad(a2);
    a3 = deg2rad(a3);
    %encontrar deformacion xx, yy e xy
    syms exx eyy exy
    eqn1 = (exx + eyy) / 2 + (exx - eyy) / 2 * cos(2 * a1) + exy * sin(2 * a1) == e1;
    eqn2 = (exx + eyy) / 2 + (exx - eyy) / 2 * cos(2 * a2) + exy * sin(2 * a2) == e2;
    eqn3 = (exx + eyy) / 2 + (exx - eyy) / 2 * cos(2 * a3) + exy * sin(2 * a3) == e3;
    S = vpasolve(eqn1, eqn2, eqn3);
    %parametros de lame
    lambda = (young * poisson) / ((1 + poisson) * (1 - 2 * poisson));
    u = young / (2 * (1 + poisson));
    %ecuaciones para encontrar esfuerzo a partir de deformacion plana
    oxx = (lambda + 2 * u) * S.exx * (10 ^ -4) + lambda * S.eyy * (10 ^ -4);
    oyy = lambda * S.exx * (10 ^ -4) + (lambda + 2 * u) * S.eyy * (10 ^ -4);
    oxy = u * 2 * S.exy * (10 ^ -4);
    ozz = lambda * S.exx * (10 ^ -4) + lambda * S.eyy * (10 ^ -4);
    e = [S.exx, S.exy;
        S.exy, S.eyy];
    o = [oxx, oxy, 0;
        oxy, oyy, 0;
        0, 0, ozz];
end