function cfa = CFA(img)
img = double(img);
cfa = zeros(size(img),'double');
cfa(1:2:end,1:2:end,1) = 1;
cfa(2:2:end,2:2:end,3) = 1;
cfa(:,:,2) = 1 - cfa(:,:,1) - cfa(:,:,3);
cfa = cfa.*img;
end