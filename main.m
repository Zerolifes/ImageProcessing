close all;
img = imread("biobw.png");
%imshow(img);
subplot(221); imshow(img); title('original');
imgtrans = trans(img);
subplot(222); imshow(imgtrans); title('trans-img');
imgbw = uint8((img>149)*255);
subplot(223); imshow(imgbw); title('bw-img');