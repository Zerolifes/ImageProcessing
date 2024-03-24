function [deltaH, deltaV] = CalDelta(red, blue)
h = [0 0 0 0 0;
     0 0 0 0 0;
     1 0 -2 0 1;
     0 0 0 0 0;
     0 0 0 0 0] / 2;
v = [0 0 1 0 0;
     0 0 0 0 0;
     0 0 -2 0 0;
     0 0 0 0 0;
     0 0 1 0 0] / 2;
deltaH = abs(conv2((red+blue),h,'same'));
deltaV = abs(conv2((red+blue),v,'same'));
end
