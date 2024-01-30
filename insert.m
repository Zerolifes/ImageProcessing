% insert square area in img with coordinate is center
function image = insert(img, area, center)
sz = size(area);
radius = floor(sz(1)/2);
image = padding(img, radius);
image(center(1):center(1)+2*radius,center(2):center(2)+2*radius,:) = area(:,:,:);
image = image(radius+1:end-radius,radius+1:end-radius,:);
end