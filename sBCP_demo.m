%%
clc;close all;clear all;
%% Input
 src = im2double(imresize(imread('test_imgs/UE_img1/boy.jpg'),1));
% LOL dataset test
% src = im2double(imresize(imread('test_imgs/UE_img2/eval15/low/780.png'),1)); 
% Ref = im2double(imresize(imread('test_imgs/UE_img2/eval15/high/780.png'),1));

%% Main function
para.lambda = 5e-4;
para.dark_r = 11;
para.derta  = 0.101;
para.gamV   = 0.3;

Our_res = sBCP_main(src, para);
figure;imshow([src Our_res])

