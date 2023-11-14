clc;
clear;
%================== load image =======================
x=imread('E:\ROG_Strix_wallpaper_FHD.jpg');
y=imread("E:/Untitled.jpeg");
z=imread("E:/sirjN.jpeg");
%=====================================================

%================== show original image =====================
subplot(3,3,1);imshow(x);title("original");
subplot(3,3,4),imshow(y);
subplot(3,3,7),imshow(z);
%============================================================

%================== show gray image ============================
subplot(3,3,2);imshow(rgb2gray(x));title("gray");
subplot(3,3,5),imshow(rgb2gray(y));
subplot(3,3,8),imshow(rgb2gray(z));
%===============================================================

%================== show black and white image =====================
subplot(3,3,3);imshow(im2bw(x));title("black and white");
subplot(3,3,6),imshow(im2bw(y));
subplot(3,3,9),imshow(im2bw(z));
%====================================================================

