pic=imread("E://pic/women-color.jpg");
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



