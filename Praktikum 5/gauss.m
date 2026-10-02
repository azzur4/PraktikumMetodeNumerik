clc;
clear;

% Matriks koefisien dan konstanta
A = [2 1 -1;
     4 3 1;
    -2 1 2];

b = [3; 9; 4];

% Matriks augmented
Ab = [A b];

n = length(b);

% Forward Elimination
for k = 1:n-1
    for i = k+1:n
        m = Ab(i,k) / Ab(k,k);
        Ab(i,:) = Ab(i,:) - m * Ab(k,:);
    end
end

disp('Matriks Segitiga Atas:');
disp(Ab);

% Backward Substitution
x = zeros(n,1);

for i = n:-1:1
    x(i) = (Ab(i,n+1) - Ab(i,i+1:n) * x(i+1:n)) / Ab(i,i);
end

disp('Hasil Eliminasi Gauss:');
fprintf('x1 = %.1f\n', x(1));
fprintf('x2 = %.1f\n', x(2));
fprintf('x3 = %.1f\n', x(3));
