%Initialize the workspace
clear all; clc; close all;

%Read in and plot the input image
input = imread('lena.gif');
figure; subplot(1,2,1); imagesc(double(input));

%Create the input mask
mask = ones(3,3);

%Apply the convolution filter
output = filter2d(input, mask, 'replicate');

%Plot the output
subplot(1,2,2); imagesc(output); colormap gray;
