clear all; clc; close all;
I = imread('lena.gif');
figure; subplot(1,2,1); imagesc(double(I));
h = ones(3,3);
II = filter2d(I, h, 'replicate');
subplot(1,2,2); imagesc(II'); colormap gray;
