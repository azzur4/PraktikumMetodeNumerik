clc;
clear;

% Perhitungan eksak
eksak = sum(1 ./ (1:20));

% Masing-masing pembagian dibulatkan 2 angka
data = 1 ./ (1:20);
data_bulat = round(data * 100) / 100;
pembulatan = sum(data_bulat);

% Menghitung galat
galat = abs(eksak - pembulatan);

% Menggunakan fungsi sum
hasil_sum = sum(1 ./ (1:20));

fprintf('Hasil eksak      = %.10f\n', eksak);
fprintf('Hasil pembulatan = %.10f\n', pembulatan);
fprintf('Galat            = %.10f\n', galat);
fprintf('Hasil dengan sum = %.10f\n', hasil_sum);
