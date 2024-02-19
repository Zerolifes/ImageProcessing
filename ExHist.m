% create histogram of image
close all;
img = imread('bwimage.png');
subplot(221); imshow(img); title('original');
[r, his, hisp] = htgr(img);
subplot(223); stem(r,his,'.r'); title('histogram');
subplot(224); stem(r,hisp,'.b'); title('normalized histogram');
