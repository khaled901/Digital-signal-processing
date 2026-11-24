
%% Lab 1: Image as a 2D Signal
close all; clear; clc;

%% 0) Load and inspect an image

if exist('peppers.png','file')
    I_rgb = imread('peppers.png');
else
    I_rgb = repmat(imread('cameraman.tif'),1,1,3);
end

figure;
imshow(I_rgb);
title('Original RGB');
saveas(gcf,'01_Original_RGB.png');

% Convert to grayscale
if size(I_rgb,3)==3
    I = rgb2gray(I_rgb);
else
    I = I_rgb;
end

figure;
imshow(I);
title('Grayscale');
saveas(gcf,'02_Grayscale.png');

% Basic information
fprintf('Class: %s | Range: [%g, %g] | Size: %d x %d\n', ...
    class(I), double(min(I(:))), double(max(I(:))), ...
    size(I,1), size(I,2));

%% 1) Quantization and dynamic range

I8 = I;
I6 = uint8(floor(double(I)/4)*4);
I4 = uint8(floor(double(I)/16)*16);

figure;
montage({I8,I6,I4},'Size',[1 3]);
title('Quantization: 8-bit vs ~6-bit vs ~4-bit');
saveas(gcf,'03_Quantization.png');

%% 2) Histogram and contrast stretching

figure;

subplot(1,2,1);
imhist(I);
title('Histogram (original)');

I_norm = mat2gray(I);
I_stretch = imadjust(I,[0.2 0.8],[0 1]);

subplot(1,2,2);
imhist(I_stretch);
title('Histogram (stretched)');

saveas(gcf,'04_Histograms.png');

figure;
montage({I,im2uint8(I_norm),im2uint8(I_stretch)}, ...
    'Size',[1 3]);
title('Original | Normalized | Contrast-stretched');
saveas(gcf,'05_Contrast.png');

%% 3) Gamma correction

I_gamma_low = imadjust(I,[],[],0.6);
I_gamma_high = imadjust(I,[],[],1.6);

figure;
montage({I,I_gamma_low,I_gamma_high},'Size',[1 3]);
title('Gamma: original | gamma=0.6 | gamma=1.6');
saveas(gcf,'06_Gamma.png');

%% 4) Sampling and aliasing

scale = 0.1;

I_small = imresize(I,scale,'nearest');
I_back = imresize(I_small,size(I),'nearest');

figure;
montage({I,I_small,I_back},'Size',[1 3]);
title('Original | Downsampled | Upscaled back');
saveas(gcf,'07_Sampling.png');
