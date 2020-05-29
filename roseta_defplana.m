%angulos en grados, deformaciones en microstrain, young en mpa
function [e, o] = roseta_defplana(a1, a2, a3, e1, e2, e3, young, poisson)
    S = roseta(a1, a2, a3, e1, e2, e3);
    exx = S(1,1);
    eyy = S(2,2);
    exy = S(1,2);
    %parametros de lame
    lambda = (young * poisson) / ((1 + poisson) * (1 - 2 * poisson));
    u = young / (2 * (1 + poisson));
    %ecuaciones para encontrar esfuerzo a partir de deformacion plana
    oxx = (lambda + 2 * u) * exx * (10 ^ -6) + lambda * eyy * (10 ^ -6);
    oyy = lambda * exx * (10 ^ -6) + (lambda + 2 * u) * eyy * (10 ^ -6);
    oxy = u * 2 * exy * (10 ^ -6);
    ozz = lambda * exx * (10 ^ -6) + lambda * eyy * (10 ^ -6);
    e = [exx, exy, 0;
        exy, eyy, 0;
        0, 0, 0];
    o = [oxx, oxy, 0;
        oxy, oyy, 0;
        0, 0, ozz];
end