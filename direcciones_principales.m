%M es una matriz minimo de 2x2
function [ap1, ap2] = direcciones_principales(M)
    ap1 = rad2deg(double(atan(2 * M(1,2) / (M(1,1) - M(2,2))) / 2));
    if (M(2,2) > M(1,1))
        ap2 = ap1;
        ap1 = ap2 + 90;
    else
        ap2 = ap1 + 90;
    end
end