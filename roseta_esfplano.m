%angulos en grados, deformaciones en microstrain, young en mpa
function [e, o] = roseta_esfplano(a1, a2, a3, e1, e2, e3, young, poisson)
    S = roseta(a1, a2, a3, e1, e2, e3);
    exx = S(1,1);
    eyy = S(2,2);
    exy = S(1,2);
    %ecuaciones para encontrar esfuerzo plano a partir de deformacion
    oxx = (young / (1 - poisson^2)) * (exx * (10 ^ -6) + poisson * eyy * (10 ^ -6));
    oyy = (young / (1 - poisson^2)) * (poisson * exx * (10 ^ -6) + eyy * (10 ^ -6));
    oxy = (young / (1 - poisson^2)) * (exy * (10 ^ -6) * (1 - poisson));
    %deformacion zz a partir de esfuerzos oxx y oyy (esfuerzo plano)
    ezz = (1 / young) * (-poisson * (oxx + oyy)) * (10 ^ 6);
    e = [exx, exy, 0;
        exy, eyy, 0;
        0, 0, ezz];
    o = [oxx, oxy, 0;
        oxy, oyy, 0;
        0, 0, 0];
end