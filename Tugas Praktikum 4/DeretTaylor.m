clc;
clear;

x = 0.3;
eksak = exp(x);
hasil = 0;

for n = 0:4
    hasil = hasil + (x^n / factorial(n));
    galat = abs(eksak - hasil);

    fprintf('n = %d\n', n);
    fprintf('Hasil = %.10f\n', hasil);
    fprintf('Galat = %.10f\n\n', galat);
end
