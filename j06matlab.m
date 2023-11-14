pic=imread("E://pic/women-color.jpg");
mask=fspecial('average',[2 5]);
subplot(2,2,1),imshow(pic),title("original")
subplot(2,2,2),imshow(imfilter(pic,mask)),title("[2 5]")