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

    fprintf('\nPersamaan %d - Metode Biseksi\n', k);

    if fa * fb > 0
        fprintf('Interval awal tidak mengurung akar.\n');
        continue;
    end

    fprintf('Iterasi\t a\t\t b\t\t c\t\t f(c)\n');

    for i = 1:20
        c = (a + b)/2;
        fc = f(c);

        fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', ...
                i, a, b, c, fc);

        if abs(fc) < 0.0001 || (b-a)/2 < 0.0001
            break;
        end

        if fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
    end

    fprintf('Perkiraan akar = %.6f\n', c);
    fprintf('Jumlah iterasi = %d\n', i);
end

