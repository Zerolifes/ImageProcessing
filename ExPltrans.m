% ex pltrans 
close all;
img = imread("biobw.png");
subplot(221); imshow(img); title('original');
imgtrans = PLtrans(img,140,20,220,250);
subplot(222); imshow(imgtrans); title('trans-img');
imgbw = uint8((img>149)*255);
subplot(223); imshow(imgbw); title('bw-img');