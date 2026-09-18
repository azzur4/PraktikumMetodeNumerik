clc;
clear;

%% NO 1 - FOR LOOP
disp('===== NO 1 - FOR LOOP =====');

for i = 2:6
    p = i^2
end


%% NO 2 - WHILE LOOP
disp('===== NO 2 - WHILE LOOP =====');

i = 2;

while (i <= 6)
    p = i^2
    i = i + 1;
end


%% NO 3 - WHILE LOOP
disp('===== NO 3 - WHILE LOOP =====');

i = 2;
p = 2;

while (p < 150)
    p = i^2
    i = i + 1;
end


%% NO 4 - CONTINUE
disp('===== NO 4 - CONTINUE =====');

for i = 2:6
    if (i == 5)
        continue
    end

    p = i^2
end


%% NO 5 - BREAK
disp('===== NO 5 - BREAK =====');

for i = 2:7
    if (i == 6)
        break
    end

    p = i^2
end


%% NO 6 - DIFERENSIAL
disp('===== NO 6 - DIFERENSIAL =====');

syms x;

f = x^4 + 3*x^3 + 5*x^2 + 2*x + 7

df = diff(f)


%% NO 7 - DIFERENSIAL
disp('===== NO 7 - DIFERENSIAL =====');

syms x;

f = 5*x^3 + 4*x^2 + 6*x + 3

df = diff(f)


%% NO 8 - INTEGRAL
disp('===== NO 8 - INTEGRAL =====');

syms x;

f = x^3 + 5*x^2 + 2*x + 4

hasil = int(f)


%% NO 9 - INTEGRAL
disp('===== NO 9 - INTEGRAL =====');

syms x;

f = 4*x^2 + 3*x + 6

hasil = int(f)


%% NO 10 - FUNCTION
disp('===== NO 10 - FUNCTION =====');

a = 12;
b = 7;

hasil = tambah(a,b)


%% NO 11 - FUNCTION DENGAN 1 NILAI RETURN
disp('===== NO 11 - FUNCTION 1 RETURN =====');

a = 9;
b = 6;

hasil = perkalian(a,b)


%% NO 12 - FUNCTION DENGAN BEBERAPA NILAI RETURN
disp('===== NO 12 - FUNCTION BEBERAPA RETURN =====');

a = 14;
b = 5;

[hasil1,hasil2] = operasi(a,b)


%% NO 13 - FUNCTION DENGAN RETURN
disp('===== NO 13 - FUNCTION RETURN =====');

a = 9;

hasil = cekNilai(a)


%% NO 14 - ANONYMOUS FUNCTION
disp('===== NO 14 - ANONYMOUS FUNCTION =====');

f = @(x) x^2 + 3*x + 2;

hasil = f(6)


%% NO 15 - ANONYMOUS FUNCTION
disp('===== NO 15 - ANONYMOUS FUNCTION =====');

f = @(x,y) x^2 + y^2;

hasil = f(5,2)


%% NO 16 - GRAFIK GARIS 2D
disp('===== NO 16 - GRAFIK GARIS 2D =====');

x = 0:0.2:12;
y = x.^2;

plot(x,y);

grid on;
title('Grafik y = x^2');
xlabel('X');
ylabel('Y');


%% NO 17 - GRAFIK GARIS 2D
disp('===== NO 17 - GRAFIK GARIS 2D =====');

x = 0:0.2:12;
y = cos(x);

plot(x,y);

grid on;
title('Grafik Cosinus');
xlabel('X');
ylabel('Y');


%% NO 18 - GRAFIK GARIS 3D
disp('===== NO 18 - GRAFIK GARIS 3D =====');

t = 0:0.2:12;

x = cos(t);
y = sin(t);
z = 2*t;

plot3(x,y,z);

grid on;
title('Grafik Garis 3D');
xlabel('X');
ylabel('Y');
zlabel('Z');


%% FUNCTION

function hasil = tambah(a,b)
    hasil = a + b;
end


function hasil = perkalian(a,b)
    hasil = a * b;
end


function [hasil1,hasil2] = operasi(a,b)
    hasil1 = a + b;
    hasil2 = a - b;
end


function hasil = cekNilai(a)
    if (a >= 7)
        hasil = 'ulus';
    else
        hasil = 'Tidak Lulus';
    end
end
