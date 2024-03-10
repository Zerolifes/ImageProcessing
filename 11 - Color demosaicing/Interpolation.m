function chrominance = Interpolation(subsampled_chrominance)
frb = [1 2 1; 2 4 2; 1 2 1]/4;  
fg = [0 1 0; 1 4 1; 0 1 0]/4; 
subsampled_chrominance(:,:,1) = conv2(subsampled_chrominance(:,:,1),frb,'same');
subsampled_chrominance(:,:,2) = conv2(subsampled_chrominance(:,:,2),fg,'same');
subsampled_chrominance(:,:,3) = conv2(subsampled_chrominance(:,:,3),frb,'same');
chrominance = subsampled_chrominance;
end