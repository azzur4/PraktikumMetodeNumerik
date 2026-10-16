clc;
clear;
close all;

x1 = linspace(0, 2.5, 500);
x2 = linspace(-1.5, 0.5, 500);
x3 = linspace(0, 1.5, 500);

y11 = 3*x1.^3 - 5*x1.^2 + 4*x1 - 7;
y12 = ones(size(x1));

y21 = exp(x2);
y22 = x2.^2;

y31 = log(x3 + 2) + 2*x3;
y32 = 3*ones(size(x3));

figure;

subplot(3,1,1);
plot(x1, y11, 'b', 'LineWidth', 1.5);
hold on;
plot(x1, y12, 'r--', 'LineWidth', 1.5);
grid on;
title('Grafik Ganda Persamaan 1');
xlabel('x');
ylabel('y');
legend('y = 3x^3 - 5x^2 + 4x - 7', 'y = 1');

subplot(3,1,2);
plot(x2, y21, 'b', 'LineWidth', 1.5);
hold on;
plot(x2, y22, 'r--', 'LineWidth', 1.5);
grid on;
title('Grafik Ganda Persamaan 2');
xlabel('x');
ylabel('y');
legend('y = e^x', 'y = x^2');

subplot(3,1,3);
plot(x3, y31, 'b', 'LineWidth', 1.5);
hold on;
plot(x3, y32, 'r--', 'LineWidth', 1.5);
grid on;
title('Grafik Ganda Persamaan 3');
xlabel('x');
ylabel('y');
legend('y = log(x+2) + 2x', 'y = 3');

