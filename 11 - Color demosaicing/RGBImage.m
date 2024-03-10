function rgbimage = RGBImage(luminance,chrominance)
chrominance(:,:,1) = chrominance(:,:,1) + luminance;
chrominance(:,:,2) = chrominance(:,:,2) + luminance;
chrominance(:,:,3) = chrominance(:,:,3) + luminance;
rgbimage = chrominance;
end