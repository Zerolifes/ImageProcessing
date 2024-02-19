% example equalized color image
close all;
img = imread('llimage.png');
subplot(251); imshow(uint8(img)); title('original image');
subplot(256); imhist(uint8(img)); title('original hist');
%subplot(221); imshow(img); title('original');
%subplot(223); imhist(img); title('original hist');

rimg = histeq(img(:,:,1));
gimg = histeq(img(:,:,2));
bimg = histeq(img(:,:,3));
nimg = zeros(size(img));
nimg(:,:,1) = rimg;
nimg(:,:,2) = gimg;
nimg(:,:,3) = bimg;
subplot(252); imshow(uint8(nimg)); title('eq1 image');
subplot(257); imhist(uint8(nimg)); title('eq1 hist');

himg = EqualImage(img);
subplot(253); imshow(himg); title('eq2 image');
subplot(258); imhist(himg); title('eq2 hist');

jimg = rgb2ycbcr(img);
y = jimg(:,:,1);
y = histeq(y);
jimg(:,:,1) = y;
jimg = ycbcr2rgb(jimg);
subplot(254); imshow(uint8(jimg)); title('eq3 image');
subplot(259); imhist(uint8(jimg)); title('eq3 hist');

mimg = histeq(img);
subplot(255); imshow(uint8(mimg)); title('matlab image');
subplot(2,5,10); imhist(uint8(mimg)); title('matlab hist');
