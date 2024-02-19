% example matching histogram
close all;

img = imread('image.png');
subplot(231); imshow(img); title('original');

[r,h,~] = htgr(img);
subplot(234); stem(r,h,'.'); title('original hist')

eqimg = EqualImage(img);
subplot(232); imshow(eqimg); title('equal image');

[r,h,~] = htgr(eqimg);
subplot(235); stem(r,h,'.'); title('equaled hist');

u = 151;
o = 5;
NM=@(r) 1/(o*sqrt(2*pi))*exp(-1/2*((r-u)/o)^2);
UF=@(r) 1/(256);
lamda = 50;
PS=@(r) lamda^r*exp(-lamda)/factorial(r);
matchimg = MatchImage(img,UF);
subplot(233); imshow(matchimg);

[r,h,~]= htgr(matchimg);
subplot(236); stem(r,h,'.'); title('matched hist');
