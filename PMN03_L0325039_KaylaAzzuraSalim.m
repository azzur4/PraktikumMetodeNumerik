clc;
clear;
close all;

pkg load symbolic;

disp('==========================================');
disp('          TUGAS PRAKTIKUM 03');
disp('==========================================');


%% NO 1 - FOR LOOP
disp(' ');
disp('===== NO 1 - FOR LOOP =====');

for i = 1:5
    hasil = i * 2;
    fprintf('i = %d, hasil = %d\n', i, hasil);
end


%% NO 2 - FOR LOOP
disp(' ');
disp('===== NO 2 - FOR LOOP =====');

for j = 1:0.5:4
    q = j / 2;
    fprintf('j = %.1f, q = %.2f\n', j, q);
end


%% NO 3 - WHILE LOOP
disp(' ');
disp('===== NO 3 - WHILE LOOP =====');

i = 1;

while i <= 5
    hasil = i * 3;
    fprintf('i = %d, hasil = %d\n', i, hasil);
    i = i + 1;
end


%% NO 4 - CONTINUE
disp(' ');
disp('===== NO 4 - CONTINUE =====');

for i = 1:6

    if i == 4
        fprintf('i = %d dilewati\n', i);
        continue;
    end

    hasil = i^2;
    fprintf('i = %d, hasil = %d\n', i, hasil);

end


%% NO 5 - BREAK
disp(' ');
disp('===== NO 5 - BREAK =====');

for i = 1:10

    if i == 6
        fprintf('Perulangan berhenti pada i = %d\n', i);
        break;
    end

    fprintf('i = %d\n', i);

end


%% NO 6 - DIFFERENSIAL
disp(' ');
disp('===== NO 6 - DIFFERENSIAL =====');

syms x;

f = x^3 + 4*x^2 + 2*x + 5;
df = diff(f, x);

disp('Fungsi:');
disp(f);

disp('Hasil diferensial:');
disp(df);


%% NO 7 - INTEGRAL
disp(' ');
disp('===== NO 7 - INTEGRAL =====');

syms x;

f = x^2 + 4*x + 3;
hasil_integral = int(f, x);

disp('Fungsi:');
disp(f);

disp('Hasil integral:');
disp(hasil_integral);


%% NO 8 - FUNCTION DENGAN 1 RETURN
disp(' ');
disp('===== NO 8 - FUNCTION 1 RETURN =====');

fungsi_satu = @(x) x^2 + 3*x + 2;

x = 4;
hasil = fungsi_satu(x);

fprintf('Nilai x = %d\n', x);
fprintf('Hasil fungsi = %d\n', hasil);


%% NO 9 - FUNCTION DENGAN BEBERAPA RETURN
disp(' ');
disp('===== NO 9 - FUNCTION MULTIPLE RETURN =====');

fungsi_jumlah = @(a,b) a + b;
fungsi_selisih = @(a,b) a - b;

a = 8;
b = 3;

jumlah = fungsi_jumlah(a,b);
selisih = fungsi_selisih(a,b);

fprintf('a = %d\n', a);
fprintf('b = %d\n', b);
fprintf('Jumlah = %d\n', jumlah);
fprintf('Selisih = %d\n', selisih);


%% NO 10 - FUNCTION DENGAN RETURN
disp(' ');
disp('===== NO 10 - FUNCTION RETURN =====');

fungsi_return = @(nilai) nilai * 2;

nilai = 75;
hasil = fungsi_return(nilai);

fprintf('Nilai = %d\n', nilai);
fprintf('Hasil = %d\n', hasil);


%% NO 11 - ANONYMOUS FUNCTION
disp(' ');
disp('===== NO 11 - ANONYMOUS FUNCTION =====');

f = @(x) 2*x + 5;

x = 7;
hasil = f(x);

fprintf('x = %d\n', x);
fprintf('f(x) = %d\n', hasil);


%% NO 12 - GRAFIK GARIS 2D
disp(' ');
disp('===== NO 12 - GRAFIK GARIS 2D =====');

x = 0:1:10;
y = x.^2;

figure;
plot(x,y);
grid on;

title('Grafik y = x^2');
xlabel('X');
ylabel('Y');


%% NO 13 - GRAFIK 2D LINSPACE
disp(' ');
disp('===== NO 13 - GRAFIK LINSPACE =====');

x = linspace(0,10,100);
y = 2*x + 3;

figure;
plot(x,y);
grid on;

title('Grafik y = 2x + 3');
xlabel('X');
ylabel('Y');


%% NO 14 - GRAFIK SIN
disp(' ');
disp('===== NO 14 - GRAFIK SIN =====');

x = linspace(0,2*pi,100);
y = sin(x);

figure;
plot(x,y);
grid on;

title('Grafik Sinus');
xlabel('X');
ylabel('sin(X)');


%% NO 15 - GRAFIK COS
disp(' ');
disp('===== NO 15 - GRAFIK COS =====');

x = linspace(0,2*pi,100);
y = cos(x);

figure;
plot(x,y);
grid on;

title('Grafik Cosinus');
xlabel('X');
ylabel('cos(X)');


%% NO 16 - GRAFIK GARIS 3D
disp(' ');
disp('===== NO 16 - LINE PLOT 3D =====');

t = linspace(0,4*pi,100);

x = cos(t);
y = sin(t);
z = t;

figure;
plot3(x,y,z);
grid on;

title('Grafik Garis 3D');
xlabel('X');
ylabel('Y');
zlabel('Z');


%% NO 17 - MESH PLOT
disp(' ');
disp('===== NO 17 - MESH PLOT =====');

x = -5:0.5:5;
y = -5:0.5:5;

[X,Y] = meshgrid(x,y);

Z = X.^2 + Y.^2;

figure;
mesh(X,Y,Z);
grid on;

title('Grafik Mesh 3D');
xlabel('X');
ylabel('Y');
zlabel('Z');


%% NO 18 - CONTOUR PLOT
disp(' ');
disp('===== NO 18 - CONTOUR PLOT =====');

x = -5:0.5:5;
y = -5:0.5:5;

[X,Y] = meshgrid(x,y);

Z = X.^2 + Y.^2;

figure;
contour(X,Y,Z);
grid on;

title('Contour Plot');
xlabel('X');
ylabel('Y');


disp(' ');
disp('==========================================');
disp('       SEMUA PROGRAM SELESAI');
disp('==========================================');
