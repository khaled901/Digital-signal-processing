
clear; clc; close all;

%% Part 1: Signal and Z-transform

x = [1 2 1];
n = 0:length(x)-1;

% Delay the signal by one sample
xDelayed = [0 x];
nDelayed = 0:length(xDelayed)-1;

figure;
subplot(2,1,1);
stem(n, x, 'filled');
title('Original Signal x[n]');
xlabel('Sample n');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(nDelayed, xDelayed, 'filled');
title('One-Sample Delay x[n-1]');
xlabel('Sample n');
ylabel('Amplitude');
grid on;

saveas(gcf, 'part1.png');

%% Part 2: System with one sample delay

b = [0.5 0.5];
a = 1;

xInput = [x 0];
y = filter(b, a, xInput);
nOutput = 0:length(y)-1;

figure;
subplot(2,1,1);
stem(nOutput, xInput, 'filled');
title('Input x[n]');
xlabel('Sample n');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(nOutput, y, 'filled');
title('Output y[n]');
xlabel('Sample n');
ylabel('Amplitude');
grid on;

disp('Output samples:');
disp(y);

saveas(gcf, 'part2.png');

%% Task 6: Modified system

b = [0.8 0.2];
yModified = filter(b, a, xInput);

figure;
subplot(2,1,1);
stem(nOutput, xInput, 'filled');
title('Input x[n]');
xlabel('Sample n');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(nOutput, yModified, 'filled');
title('Modified Output y[n]');
xlabel('Sample n');
ylabel('Amplitude');
grid on;

disp('Modified output samples:');
disp(yModified);

saveas(gcf, 'part3.png');
