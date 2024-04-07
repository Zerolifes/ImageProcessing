close all;
img = imread('image.png');
img = rgb2gray(img);
img = double(img);
sz = size(img);
m = sz(1);
n = sz(2);
f1 = fft2(img);
f1 = fftshift(f1);
subplot(131); imshow(log(abs(f1)+1),[]);

imgp = zeros(size(img));
imgp = [img,imgp;imgp,imgp];
p = 2*m;
q = 2*n;
for x=1:p
    for y=1:q
        imgp(x,y) = imgp(x,y)*(-1)^(x+y);
    end
end
f2 = fft2(imgp);
for i=1:p
    for j=1:q
        if (i-m)^2+(j-n)^2 >= 200^2
            f2(i,j) = 0;
        end
    end
end
subplot(132); imshow(log(abs(f2)+1),[]);
imgg = ifft2(f2);
imgg = real(imgg);
for x=1:p
    for y=1:q
        imgg(x,y) = imgg(x,y)*(-1)^(x+y);
    end
end
subplot(133); imshow(imgg(1:m,1:n),[]);
