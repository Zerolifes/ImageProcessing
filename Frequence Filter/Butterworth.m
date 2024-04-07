function [img, sp] = Butterworth(D0,n,spec)
[h, w] = size(spec);
D0 = D0*min(h,w);
ch = (h+1)/2;
cw = (w+1)/2;
[x, y] = meshgrid([1:w],[1:h]);
D = sqrt((x-cw).^2+(y-ch).^2);
H = 1./(1+(D/D0).^(2*n));
sp = spec.*H;
img = real(ifft2(ifftshift(sp)));
end