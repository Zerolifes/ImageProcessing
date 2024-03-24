function [r1, b1] = Cal_RoB_BoR(red, blue, G)
ip1 = [1 0 1;
       0 0 0;
       1 0 1] / 4;
ipg1 = [-1 0 -1;
         0 4 0;
        -1 0 -1] / 4;
r = zeros(size(red));
b = r;
r(1:2:end,1:2:end) = 1;
b(2:2:end,2:2:end) = 1;
r1 = (conv2(red,ip1,'same') + conv2(G,ipg1,'same')).*b;
b1 = (conv2(blue,ip1,'same') + conv2(G,ipg1,'same')).*r;
end