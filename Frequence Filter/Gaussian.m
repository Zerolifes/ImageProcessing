function [img, sp] = Gaussian(D0, spec)
[h, w] = size(spec);
D0 = D0*min(h,w);
ch = (h+1)/2;
cw = (w+1)/2;
[x, y] = meshgrid([1:w],[1:h]);
D = (x-cw).^2+(y-ch).^2;
H = exp(-D/(2*D0^2));
sp = spec.*H;
img = real(ifft2(ifftshift(sp)));
end