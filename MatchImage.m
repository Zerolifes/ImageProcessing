% matching histogram of image
function image = MatchImage(img,G)
pz = [];
eqimg = EqualImage(img);
image = zeros(size(img),'double');
for i=0:255
    pz = [pz, G(i)];
end
cdf = 0.0;
for i=1:256
    cdf = cdf+pz(i);
    image = image + (eqimg == uint8(255*cdf))*(i-1);
end
image = uint8(image);
end