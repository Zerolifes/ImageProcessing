function G = CalGreen(deltaH, deltaV, green)
eps = 1e-1;
g1 = [0 0 0;
      1 0 1;
      0 0 0] / 2;
g2 = [0 1 0;
      0 0 0;
      0 1 0] / 2;
g3 = [0 1 0;
      1 0 1;
      0 1 0] / 4;
G = green;
G = G + conv2(green,g1,'same').*(deltaV-deltaH>eps);
G = G + conv2(green,g2,'same').*(deltaH-deltaV>eps);
G = G + conv2(green,g3,'same').*(abs(deltaH-deltaV)<=eps);
end