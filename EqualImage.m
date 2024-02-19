function image = EqualImage(img)
image = zeros(size(img),'double');
[~,~,p] = htgr(img);
cdf = 0.0;
for i=1:256
    cdf = cdf+p(i);
    image = image + (img == (i-1)) * 255 * cdf;
end
image = uint8(image);
end