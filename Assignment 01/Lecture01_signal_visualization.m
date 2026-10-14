
% Task 1: Create a Sine Wave

clc;
clear;
close all;

% Signal parameters
A = 1;
f = 5;
t = 0:0.001:1;

% Generate sine wave
y = A * sin(2*pi*f*t);

% Plot the signal
figure;
plot(t, y);
title('Sine Wave - 5 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;


% Task 2: Compare Different Frequencies

f1 = 2;
f2 = 5;
f3 = 10;

y1 = sin(2*pi*f1*t);
y2 = sin(2*pi*f2*t);
y3 = sin(2*pi*f3*t);

figure;

subplot(3,1,1);
plot(t,y1);
title('Sine Wave - 2 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t,y2);
title('Sine Wave - 5 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t,y3);
title('Sine Wave - 10 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;


% Task 3: Compare Different Amplitudes

f = 5;

A1 = 0.5;
A2 = 1;
A3 = 2;

y1 = A1 * sin(2*pi*f*t);
y2 = A2 * sin(2*pi*f*t);
y3 = A3 * sin(2*pi*f*t);

figure;

subplot(3,1,1);
plot(t,y1);
title('Sine Wave - Amplitude 0.5');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t,y2);
title('Sine Wave - Amplitude 1');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t,y3);
title('Sine Wave - Amplitude 2');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;


% Task 4: Add Noise

% Create clean sine wave
f = 5;
A = 1;
clean_signal = A * sin(2*pi*f*t);

% Generate random noise
rng(1);
noise = 0.3 * randn(size(t));

% Add noise to the signal
noisy_signal = clean_signal + noise;

% Plot both signals
figure;

subplot(2,1,1);
plot(t, clean_signal);
title('Clean Sine Wave');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t, noisy_signal);
title('Noisy Sine Wave');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;


% Task 5: Save Figures

% Save figures in the same folder as the script
folder = fileparts(mfilename('fullpath'));

exportgraphics(figure(2), fullfile(folder, ...
    'frequency_comparison.png'));

exportgraphics(figure(3), fullfile(folder, ...
    'amplitude_comparison.png'));

exportgraphics(figure(4), fullfile(folder, ...
    'clean_vs_noisy_signal.png'));

disp('All figures saved successfully!');


