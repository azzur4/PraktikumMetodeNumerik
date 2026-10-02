clc;
clear;

A = [2 1 -1;
     4 3 1;
    -2 1 2];

b = [3; 9; 4];

n = length(b);

L = eye(n);
U = A;

for k = 1:n-1
    for i = k+1:n
        m = U(i,k) / U(k,k);
        L(i,k) = m;
        U(i,:) = U(i,:) - m * U(k,:);
    end
end

disp('Matriks L:');
disp(L);

disp('Matriks U:');
disp(U);

y = zeros(n,1);

for i = 1:n
    y(i) = b(i) - L(i,1:i-1) * y(1:i-1);
end

disp('Nilai y:');
disp(y);

x = zeros(n,1);

for i = n:-1:1
    x(i) = (y(i) - U(i,i+1:n) * x(i+1:n)) / U(i,i);
end

disp('Hasil Dekomposisi LU:');
fprintf('x1 = %.1f\n', x(1));
fprintf('x2 = %.1f\n', x(2));
fprintf('x3 = %.1f\n', x(3));
