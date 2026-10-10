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

% Eliminasi Gauss-Jordan
for k = 1:n
    % Tukar baris jika pivot nol
    if abs(M(k,k)) < 1e-12
        for j = k+1:n
            if abs(M(j,k)) > 1e-12
                temp = M(k,:);
                M(k,:) = M(j,:);
                M(j,:) = temp;
                break;
            end
        end
    end

    M(k,:) = M(k,:)/M(k,k);

    for i = 1:n
        if i ~= k
            faktor = M(i,k);
            M(i,:) = M(i,:) - faktor*M(k,:);
        end
    end
end

x = M(:,n+1);
waktu = toc(waktu_mulai);

disp('Matriks akhir Gauss-Jordan:');
disp(M);

disp('Hasil Gauss-Jordan:');
fprintf('p = %.10f\n', x(1));
fprintf('q = %.10f\n', x(2));
fprintf('r = %.10f\n', x(3));
fprintf('s = %.10f\n', x(4));
fprintf('t = %.10f\n', x(5));

fprintf('Waktu komputasi: %.8f detik\n', waktu);

