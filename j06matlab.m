pic=imread("E://pic/noice_women.jpg");
mask=fspecial('average',[2 5]);
mask_2=fspecial('average',[3 7]);
mask_3=fspecial('average',[4 8]);

subplot(2,2,1),imshow(pic),title("original")
subplot(2,2,2),imshow(imfilter(pic,mask)),title("[2 5]");
subplot(2,2,3),imshow(imfilter(pic,mask_2)),title("[3 7]");
subplot(2,2,4),imshow(imfilter(pic,mask_3)),title("[4 8]");

figure;
mask_average=fspecial('average');
mask_gaussian=fspecial('gaussian');
mask_disk=fspecial('disk');

subplot(1,3,1),imshow(imfilter(pic,mask_average));title("average")
subplot(1,3,2),imshow(imfilter(pic,mask_gaussian));title("gaussian")
subplot(1,3,3),imshow(imfilter(pic,mask_disk));title("disk")
%================== 9999999999999999999999999999999999999
figure;

subplot(2,2,1),imshow(imfilter(pic,mask,3)),title("x");
subplot(2,2,2),imshow(imfilter(pic,mask,"symmetric")),title("symmetric");
subplot(2,2,3),imshow(imfilter(pic,mask,"replicate")),title("replicate");
subplot(2,2,4),imshow(imfilter(pic,mask_2,"circular")),title("circular");

%================== 10000000000000000000000000000000

figure;
pic_2=imread("E://pic/Afl808ace Bird lovers kiss Animal Photography Picture-96587254,2017,Yunnan Dali,Animal Photography Black And White,Animal photography beautiful birds_bird Photography beautiful cute.jpg");
mask_sh=fspecial('laplacian',0.5);
mask_log=fspecial('log',5,1);
mask_un=fspecial('unsharp');
imshow(pic_2),title("original");figure
subplot(1,3,1),imshow(pic_2-(imfilter(pic_2,mask_sh))),title("laplacian")
subplot(1,3,2),imshow(pic_2-(imfilter(pic_2,mask_log))),title("log")
subplot(1,3,3),imshow(imfilter(pic_2,mask_un)),title("unsharp")




