
% Lecture 02 - Sampling and Aliasing
% Task 1: Create the Original Signal

clc;
clear;
close all;

% Signal parameters
A = 1;
f = 10;
duration = 1;

% Create time vector
t = 0:0.0001:duration;

% Generate original signal
original_signal = A * sin(2*pi*f*t);

% Plot original signal
figure;
plot(t, original_signal);
title('Original Sine Wave - 10 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;
legend('Original Signal');

% Save figure
exportgraphics(gcf, 'original_signal.png');


% Task 2: Different Sampling Frequencies

% Sampling frequencies
fs_values = [15 20 25 50 100];

% Create a new figure
figure;

for i = 1:length(fs_values)

    % Current sampling frequency
    fs = fs_values(i);

    % Sampling period
    Ts = 1/fs;

    % Sample time points
    ts = 0:Ts:duration;

    % Generate sampled signal
    sampled_signal = A * sin(2*pi*f*ts);

    % Create subplot
    subplot(5,1,i);

    % Plot original signal
    plot(t, original_signal, 'b');
    hold on;

    % Plot sampled points
    plot(ts, sampled_signal, 'ro');

    title(['Sampling Frequency = ' num2str(fs) ' Hz']);
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    legend('Original Signal', 'Sampled Points');
    grid on;

    hold off;
end


% Save each sampling frequency as a separate PNG

fs_values = [15 20 25 50 100];

% Get the folder containing this MATLAB script
folder = fileparts(mfilename('fullpath'));

for i = 1:length(fs_values)

    fs = fs_values(i);
    Ts = 1/fs;
    ts = 0:Ts:duration;

    sampled_signal = A * sin(2*pi*f*ts);

    % Create a separate figure
    fig = figure;

    % Original signal
    plot(t, original_signal, 'b');
    hold on;

    % Sampled points
    plot(ts, sampled_signal, 'ro');

    title(['Sampling Frequency = ' num2str(fs) ' Hz']);
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    legend('Original Signal', 'Sampled Points');
    grid on;

    % Save PNG file
    filename = ['sampling_' num2str(fs) 'Hz.png'];
    exportgraphics(fig, fullfile(folder, filename));

    close(fig);
end

disp('All five sampling figures saved successfully!');
