clc;
clear;
format long;

A = [5 -1 -1  0  0;
    -1  5 -1 -1  0;
    -1 -1  4 -1 -1;
     0  0  1  4 -2;
     0  1 -1  1  4];

B = [-1; 2; 6; 2; -1];
n = length(B);

x = zeros(n,1);
tol = 1e-10;
maks_iterasi = 1000;

waktu_mulai = tic;

for iterasi = 1:maks_iterasi
    x_baru = zeros(n,1);

    for i = 1:n
        jumlah = 0;
        for j = 1:n
            if j ~= i
                jumlah = jumlah + A(i,j)*x(j);
            end
        end
        x_baru(i) = (B(i)-jumlah)/A(i,i);
    end

    if norm(x_baru-x,inf) < tol
        x = x_baru;
        break;
    end

    x = x_baru;
end

waktu = toc(waktu_mulai);

fprintf('Jumlah iterasi Jacobi: %d\n', iterasi);
disp('Hasil Jacobi:');
fprintf('p = %.10f\n', x(1));
fprintf('q = %.10f\n', x(2));
fprintf('r = %.10f\n', x(3));
fprintf('s = %.10f\n', x(4));
fprintf('t = %.10f\n', x(5));

fprintf('Waktu komputasi: %.8f detik\n', waktu);

