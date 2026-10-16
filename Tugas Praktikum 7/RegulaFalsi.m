clc;
clear;

fungsi = {
    @(x) 3*x^3 - 5*x^2 + 4*x - 8,
    @(x) exp(x) - x^2,
    @(x) log(x + 2) + 2*x - 3
};

batas = [
    1, 2;
   -1, 0;
    0, 1
];

for k = 1:3
    f = fungsi{k};
    a = batas(k,1);
    b = batas(k,2);

    fa = f(a);
    fb = f(b);

    fprintf('\nPersamaan %d - Metode Regula-Falsi\n', k);

    if fa * fb > 0
        fprintf('Interval awal tidak mengurung akar.\n');
        continue;
    end

    fprintf('Iterasi\t a\t\t b\t\t xr\t\t f(xr)\n');

    for i = 1:20
        xr = (a*fb - b*fa)/(fb-fa);
        fr = f(xr);

        fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', ...
                i, a, b, xr, fr);

        if abs(fr) < 0.0001
            break;
        end

        if fa * fr < 0
            b = xr;
            fb = fr;
        else
            a = xr;
            fa = fr;
        end
    end

    fprintf('Perkiraan akar = %.6f\n', xr);
    fprintf('Jumlah iterasi = %d\n', i);
end

