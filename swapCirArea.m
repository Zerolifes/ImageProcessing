% swap two random circles area in img
close all;
img = imread('image.png');
sz = size(img);
radius = 50;
px = floor(rand*sz(1));
py = floor(rand*sz(2));
qx = floor(rand*sz(1));
qy = floor(rand*sz(2));
img = padding(img,radius);
for i=1:sz(1)+2*radius
    for j=1:sz(2)+2*radius
        if (i-px-radius)^2 + (j-py-radius)^2 <= radius^2
            a = img(i,j,:);
            img(i,j,:) = img(i+qx-px,j+qy-py,:);
            img(i+qx-px,j+qy-py,:) = a;
        end
    end
end
img = img(radius+1:radius+sz(1),radius+1:sz(2),:);
imshow(img);