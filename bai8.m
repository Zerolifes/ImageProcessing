close all;
img = imread('bwimage.png');
N = normrnd(0,5,size(img));
%img = img + uint8(N);
H = [1 2 1; 2 4 2;1 2 1]/16;
imgf = conv2(img,H);
subplot(121); imshow(img); title('original');
subplot(122); imshow(uint8(imgf)); title('processed image');