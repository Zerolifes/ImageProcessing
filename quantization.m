function image = quantization(img, bits)
bits = double(2^(8-bits));
image = uint8(floor(double(img)/bits)*bits);
end