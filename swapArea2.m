% swap two random rectangle area in img
close all;
img = imread('image.png');
subplot(2,2,1); imshow(img); title('original');
sz = size(img);
radius = 50;
px = floor(rand*sz(1));
py = floor(rand*sz(2));
P = cut(img,[px,py],radius);
qx = floor(rand*sz(1));
qy = floor(rand*sz(2));
Q = cut(img,[qx,qy],radius);
subplot(2,2,3); imshow(P); title('P');
subplot(2,2,4); imshow(Q); title('Q');
img = insert(img, P, [qx, qy]);
img = insert(img, Q, [px, py]);
subplot(2,2,2); imshow(img); title('modified');