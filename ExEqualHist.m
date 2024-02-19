% histogram equalization
close all;

img = imread('llimage.png');
subplot(221); imshow(img); title('original');

eqimg = EqualImage(img);
subplot(222); imshow(eqimg); title('equalized image');

[r,h,~] = htgr(img);
subplot(223); stem(r,h,'.'); title('original hist')

[r,h,~] = htgr(eqimg);
subplot(224); stem(r,h,'.'); title('equalized hist');
