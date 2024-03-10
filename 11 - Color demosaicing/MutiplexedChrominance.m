function chrominance = Chrominance(cfa, luminance)
chrominance = cfa(:,:,1)+cfa(:,:,2)+cfa(:,:,3)-luminance;
end