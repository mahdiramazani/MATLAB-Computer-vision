image=imread("E:/pic/k3.jpg");
image_gray=rgb2gray(image);

subplot(2,2,1),imshow(image_gray),title("org");

mad=ordfilt2(image_gray,5,ones(3,3));
subplot(2,2,2),imshow(mad),title("mad");

min=ordfilt2(image_gray,1,ones(3,3));
subplot(2,2,3),imshow(min),title("min");


max=ordfilt2(image_gray,9,ones(3,3));
subplot(2,2,4),imshow(max),title("max");
