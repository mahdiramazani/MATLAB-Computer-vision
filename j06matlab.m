pic=imread("E://pic/noice_women.jpg");
mask=fspecial('disk',2);
imshow(pic);
figure;
imshow(imfilter(pic,mask))