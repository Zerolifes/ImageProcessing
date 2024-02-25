close all;
img = imread('bwimage.png');
N = normrnd(0,5,size(img));
img = img + uint8(N);
H = [1 2 1; 2 4 2;1 2 1];
imgf = conv2(img,H);
imshow(uint8(imgf));