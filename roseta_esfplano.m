%angulos en grados, deformaciones en microstrain, young en mpa
function [e, o] = roseta_esfplano(a1, a2, a3, e1, e2, e3, young, poisson)
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
    %ecuaciones para encontrar esfuerzo plano a partir de deformacion
    oxx = (young / (1 - poisson^2)) * (S.exx * (10 ^ -4) + poisson * S.eyy * (10 ^ -4));
    oyy = (young / (1 - poisson^2)) * (poisson * S.exx * (10 ^ -4) + S.eyy * (10 ^ -4));
    oxy = (young / (1 - poisson^2)) * (S.exy * (10 ^ -4) * (1 - poisson));
    %deformacion zz a partir de esfuerzos oxx y oyy (esfuerzo plano)
    ezz = (1 / young) * (-poisson * (oxx + oyy)) * (10 ^ 4);
    e = [S.exx, S.exy, 0;
        S.exy, S.eyy, 0;
        0, 0, ezz];
    o = [oxx, oxy;
        oxy, oyy];
end