% cut square area have coordinates at center with radius
function image = cut(img, center, radius)
image = padding(img, radius);
image = image(center(1):center(1)+2*radius,center(2):center(2)+2*radius,:);
end