function [img, sk] = getsk(N, k, spec)
deltar = 0.5/N;
[img, sk] = IdealLowpass(deltar*k,spec);
[img, sk_1] = IdealLowpass(deltar*(k-1),spec);
sk = sk-sk_1;
img = real(ifft2(ifftshift(sk)));
end