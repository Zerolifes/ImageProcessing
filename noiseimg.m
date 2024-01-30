% create gaussian noise
close all;
img = imread('image.png');
noise = normrnd(0,5,size(img));
subplot(2,2,1); imshow(img); title('original');
subplot(2,2,2); imshow(noise); title('noise');
imgnoise = int8(img)+int8(noise);
subplot(2,2,3); imshow(uint8(imgnoise)); title('img + noise');

mimg = mean(img);
simg = std(img);
mimgn = mean(imgnoise);
singn = std(imgnoise);

Pimg = cut(img,[100,100],5);
subplot(2,2,4); imshow(Pimg); title('P-part');
mPimg = mean(Pimg);
sPimg = std(Pimg);

Pimgnoise = cut(imgnoise,[100,100],5);
mPimgn = mean(Pimgnoise);
sPimgn = std(Pimgnoise);