function [r2, b2] = Cal_RoGB_BoGR(red, blue, G)
ip2 = [0 1 0;
       0 0 0;
       0 1 0] / 2;
ipg2 =[0 -1 0;
       0 2 0;
       0 -1 0] / 2;
gb = zeros(size(red));
gr = gb;
gb(2:2:end,1:2:end) = 1;
gr(1:2:end,2:2:end) = 1;
r2 = (conv2(red,ip2,'same')+conv2(G,ipg2,'same')).*gb;
b2 = (conv2(blue,ip2,'same')+conv2(G,ipg2,'same')).*gr;
end