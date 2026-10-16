clc;
clear;
close all;

x1 = linspace(0, 2.5, 500);
x2 = linspace(-1.5, 0.5, 500);
x3 = linspace(0, 1.5, 500);

f1 = 3*x1.^3 - 5*x1.^2 + 4*x1 - 8;
f2 = exp(x2) - x2.^2;
f3 = log(x3 + 2) + 2*x3 - 3;

figure;

subplot(3,1,1);
plot(x1, f1, 'b', 'LineWidth', 1.5);
hold on;
plot(x1, zeros(size(x1)), 'r--');
grid on;
title('Grafik Tunggal Persamaan 1');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'y = 0');

subplot(3,1,2);
plot(x2, f2, 'b', 'LineWidth', 1.5);
hold on;
plot(x2, zeros(size(x2)), 'r--');
grid on;
title('Grafik Tunggal Persamaan 2');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'y = 0');

subplot(3,1,3);
plot(x3, f3, 'b', 'LineWidth', 1.5);
hold on;
plot(x3, zeros(size(x3)), 'r--');
grid on;
title('Grafik Tunggal Persamaan 3');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'y = 0');

