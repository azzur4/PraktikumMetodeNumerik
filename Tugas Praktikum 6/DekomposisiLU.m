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

waktu_mulai = tic;

% Dekomposisi LU metode Doolittle
L = eye(n);
U = zeros(n);

for k = 1:n
    for j = k:n
        U(k,j) = A(k,j) ...
            - L(k,1:k-1)*U(1:k-1,j);
    end

    for i = k+1:n
        L(i,k) = (A(i,k) ...
            - L(i,1:k-1)*U(1:k-1,k))/U(k,k);
    end
end

% Substitusi maju
y = zeros(n,1);
for i = 1:n
    y(i) = (B(i) ...
        - L(i,1:i-1)*y(1:i-1))/L(i,i);
end

% Substitusi balik
x = zeros(n,1);
for i = n:-1:1
    x(i) = (y(i) ...
        - U(i,i+1:n)*x(i+1:n))/U(i,i);
end

waktu = toc(waktu_mulai);

disp('Matriks L:');
disp(L);
disp('Matriks U:');
disp(U);

disp('Hasil Dekomposisi LU:');
fprintf('p = %.10f\n', x(1));
fprintf('q = %.10f\n', x(2));
fprintf('r = %.10f\n', x(3));
fprintf('s = %.10f\n', x(4));
fprintf('t = %.10f\n', x(5));

fprintf('Waktu komputasi: %.8f detik\n', waktu);

