function Ispectrum(folder)
for i=1:9
    path = folder+"/image"+string(i)+".png";
    img = imread(path);
    img = rgb2gray(img);
    spec = fft2(img);
    spec = fftshift(spec);
    spec = abs(spec);
    subplot(3,3,i); imshow(log(spec),[]);
end
end