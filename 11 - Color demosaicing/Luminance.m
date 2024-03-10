function luminance = Luminance(cfa)
cfa = cfa(:,:,1)+cfa(:,:,2)+cfa(:,:,3);
FL = [-2 3 -6 3 -2; 3 4 2 4 3; -6 2 48 2 -6;3 4 2 4 3;-2 3 -6 3 -2]/64;
luminance = conv2(cfa,FL,'same');
end