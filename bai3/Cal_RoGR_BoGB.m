function [r3, b3] = Cal_RoGR_BoGB(red, blue, G)
ip3 = [0 0 0;
       1 0 1;
       0 0 0] / 2;
ipg3 =[0 0 0;
      -1 2 -1;
       0 0 0] / 2;
rg = zeros(size(red));
bg = rg;
rg(1:2:end,2:2:end) = 1;
bg(2:2:end,1:2:end) = 1;
r3 = (conv2(red,ip3,'same')+conv2(G,ipg3,'same')).*rg;
b3 = (conv2(blue,ip3,'same')+conv2(G,ipg3,'same')).*bg;
end