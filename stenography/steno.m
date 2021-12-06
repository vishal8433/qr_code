Base = imread('C:\Users\DELL\OneDrive\Desktop\stenography\base.jpg');
%%imshow(Base);title('base image')
Message=imread('C:\Users\DELL\OneDrive\Desktop\stenography\secret_image.jpg');
%%imshow(Message);title('secret image')
Msg = im2bw(rgb2gray(Message));
%%imshow(Msg);title('binary image')
Msg=imresize(Msg,size(Base(:,:,1)));
%%imshow(Msg);title('resized image')
new=Base;
%%imshow(Msg);title('new base image')
new(:,:,1)=bitset(new(:,:,1),1,Msg);
imshow(new);title('image with hidden msg')
%%montage(Base,new);
imwrite(new,'C:\Users\DELL\OneDrive\Desktop\stenography\msgIm.bmp');
clear all;
