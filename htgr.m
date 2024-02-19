% create histogram of image
function [r,his,hisp] = htgr(img)
img = reshape(img,1,[]);
l = length(img);
r = 0:255;
his = (double(img == r(:))*ones(size(img'),'double'))';
hisp = his/l;
end