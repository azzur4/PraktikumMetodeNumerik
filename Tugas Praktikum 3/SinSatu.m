clc;
clear;

x = 1;
eksak = sin(x);
hasil = 0;

for n = 0:5
    hasil = hasil + ((-1)^n * x^(2*n+1)) / factorial(2*n+1);

    if n >= 1
        galat = abs(eksak - hasil);

        fprintf('N = %d\n', n);
        fprintf('Hasil = %.10f\n', hasil);
        fprintf('Galat = %.10f\n\n', galat);
    end
end
