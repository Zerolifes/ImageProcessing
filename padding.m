function image = padding(img, radius)
sz = size(img);
if length(sz) == 3
    paddingUp = zeros([radius, sz(2) + 2*radius , sz(3)]);
    paddingDown = paddingUp;
    paddingLeft = zeros([sz(1), radius, sz(3)]);
    paddingRight = paddingLeft;
    image = [paddingUp; paddingLeft, img, paddingRight; paddingDown];
elseif length(sz) == 2
    paddingUp = zeros([radius, sz(2) + 2*radius]);
    paddingDown = paddingUp;
    paddingLeft = zeros([sz(1), radius]);
    paddingRight = paddingLeft;
    image = [paddingUp; paddingLeft, img, paddingRight; paddingDown];
end