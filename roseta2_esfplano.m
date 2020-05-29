%con 2 rosetas perpendiculares, young, poisson y una condicion de esfuerzo plano, podemos
%conocer la diagonal del tensor deformacion
function [e] = roseta2_esfplano(e1, e2, young, poisson)
    %parametros de lame
    lambda = (young * poisson) / ((1 + poisson) * (1 - 2 * poisson));
    u = young / (2 * (1 + poisson));
    %diagonal tensor deformacion
    e(1) = e1;
    e(2) = e2;
    e(3) = -lambda * (e1 + e2) / (lambda + 2 * u);
end