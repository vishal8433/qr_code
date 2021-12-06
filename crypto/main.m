clc;
clear all;
close all;
tic;
%Input
inImg = imread('C:\Users\DELL\OneDrive\Desktop\crypto\base.jpg');
inImg=im2double(imresize(inImg,0.5));
figure
imshow(inImg);
inImg=im2bw(inImg);
%inImg=double(inImg);
figure
imshow(inImg);
title('Secret Image');
%fn call
[share1, share2, share12] = VisCrypt(inImg);
toc;
%Output
share1 = imresize(share1, [256 256]);
%share1=im2double(imresize(share1,0.5,'nearest'));
figure
imshow(share1);
title('Share 1');
share2 = imresize(share2, [256 256]);
figure
imshow(share2);
title('Share 2');
share12 = imresize(share12, [256 256]);
figure;imshow(share12);title('Overlapping Share 1 & 2');
imwrite(share1,'C:\Users\DELL\OneDrive\Desktop\crypto\Share1.jpg');
imwrite(share2,'C:\Users\DELL\OneDrive\Desktop\crypto\Share2.jpg');
imwrite(share12,'C:\Users\DELL\OneDrive\Desktop\crypto\Overlapped.jpg');