clc;
clear;

A = [2 1 -1;
     4 3 1;
    -2 1 2];

b = [3; 9; 4];

Ab = [A b];

n = length(b);

for k = 1:n
    Ab(k,:) = Ab(k,:) / Ab(k,k);

    for i = 1:n
        if i ~= k
            m = Ab(i,k);
            Ab(i,:) = Ab(i,:) - m * Ab(k,:);
        end
    end
end

disp('Matriks Identitas:');
disp(Ab);

x = Ab(:,n+1);

disp('Hasil Gauss-Jordan:');
fprintf('x1 = %.1f\n', x(1));
fprintf('x2 = %.1f\n', x(2));
fprintf('x3 = %.1f\n', x(3));
