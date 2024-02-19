function image = PLtrans(img, r1, s1, r2, s2)
img = double(img);
part1 = img*(s1/r1).*(img<r1); 
part2 = ((img-r1)*(s2-s1)/(r2-r1)+s1).*((img-r1)<(r2-r1)); 
part3 = ((img-r2)*(255-s2)/(255-s2)+s2).*((img-r2)>0);
image = uint8(part1+part2+part3);
end