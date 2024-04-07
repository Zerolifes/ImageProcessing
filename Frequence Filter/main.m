close all;
image = imread("kodim19.png");

I = rgb2gray(image);
spec = fftshift(fft2(I));
figure;
subplot(121); imshow(I); title('original');
subplot(122); imshow(log(abs(spec)),[]); title("spectrum");

d0 = 0.3;
n = 1;
[img, sp] = IdealLowpass(d0,spec);
figure;
subplot(121); imshow(img,[]); title('ideal lowpass');
subplot(122); imshow(log(abs(sp)),[]); title("spectrum");

[img, sp] = Gaussian(d0,spec);
figure;
subplot(121); imshow(img,[]); title('Gaussian');
subplot(122); imshow(log(abs(sp)),[]); title("spectrum");

[img, sp] = Butterworth(d0,n,spec);
figure;
subplot(121); imshow(img,[]); title('Butterworth');
subplot(122); imshow(log(abs(sp)),[]); title("spectrum");