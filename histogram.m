clc;
clear;

image_1=imread("E://pic/tarzan].jpg");
i=rgb2gray(image_1);
subplot(3,2,1),imshow(image_1),title("original image");
subplot(3,2,2),imhist(image_1),title("histogram image");

image=imread("E://pic/tarzan].jpg");
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);

image(:,:,1)=histeq(r);
image(:,:,2)=histeq(g);
image(:,:,3)=histeq(b);


subplot(3,2,3),imshow(image),title("b");
subplot(3,2,4),imhist(image),title("histogram b");


localhist=adapthisteq(i,'NumTiles',[10 10], 'ClipLimit',0.03 ,'NBins',256,'Range','original');
loc=adapthisteq(i);
subplot(3,2,5),imshow(loc),title("local hist");
subplot(3,2,6),imhist(localhist),title("histogram local hist");


