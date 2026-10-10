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
M = [A B];

waktu_mulai = tic;

% Eliminasi maju
for k = 1:n-1
    for i = k+1:n
        faktor = M(i,k)/M(k,k);
        M(i,k:n+1) = M(i,k:n+1) ...
            - faktor*M(k,k:n+1);
    end
end

disp('Matriks segitiga atas:');
disp(M);

% Substitusi balik
x = zeros(n,1);
for i = n:-1:1
    x(i) = (M(i,n+1) ...
        - M(i,i+1:n)*x(i+1:n))/M(i,i);
end

waktu = toc(waktu_mulai);

disp('Hasil metode Gauss:');
fprintf('p = %.10f\n', x(1));
fprintf('q = %.10f\n', x(2));
fprintf('r = %.10f\n', x(3));
fprintf('s = %.10f\n', x(4));
fprintf('t = %.10f\n', x(5));

fprintf('Waktu komputasi: %.8f detik\n', waktu);

