close all;
img = imread('bwimage.png');
f1 = ones(3,3,'double')*1/9;
f2 = ones(7,7,'double')*1/49;
f3 = ones(9,9,'double')*1/81;
f4 = ones(13,13,'double')*1/169;
imgf1 = uint8(conv2(img,f1));
imgf2 = uint8(conv2(img,f2));
imgf3 = uint8(conv2(img,f3));
imgf4 = uint8(conv2(img,f4));
subplot(231); imshow(img); title('original');
subplot(232); imshow(imgf1); title('3x3 filter');
subplot(233); imshow(imgf2); title('7x7 filter');
subplot(234); imshow(imgf3); title('9x9 filter');
subplot(235); imshow(imgf4); title('13x13 filter');