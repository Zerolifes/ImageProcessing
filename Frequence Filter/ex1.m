close all;
I = imread('kodim19.png');
I = rgb2gray(I);
I = double(I);
sp = fftshift(fft2(I));
D0 = 0.2;
[m, n] = size(I);
figure;
subplot(121); imshow(I,[]); title('original');
subplot(122); imshow(log(abs(sp)+1),[]); title('original sp');
for x=1:m
    for y=1:n
        if (x-m/2)^2/ (D0*m)^2 + (y-n/2)^2 / (D0*n)^2 > 1
            sp(x,y) = 0;
        end
    end
end
figure;
subplot(121); imshow(log(abs(sp)+1),[]); title('filtered sp');
I2 = real(ifft2(ifftshift(sp)));
subplot(122); imshow(uint8(I2)); title('filter image');