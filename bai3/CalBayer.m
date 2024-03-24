function [red, green, blue, bayer] = CalBayer(image)
image = double(image);
red = zeros(size(image(:,:,1)));
blue = red;
red(1:2:end,1:2:end) = 1;
blue(2:2:end,2:2:end) = 1;
green = 1 - blue - red;
red = red.*image(:,:,1);
green = green.*image(:,:,2);
blue = blue.*image(:,:,3);
bayer = red + green + blue;
end