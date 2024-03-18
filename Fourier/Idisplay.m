function Idisplay(folder)
for i=1:9
    path = folder+"/image"+string(i)+".png";
    img = imread(path);
    subplot(3,3,i); imshow(img);
end
end