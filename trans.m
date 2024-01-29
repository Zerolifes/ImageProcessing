function t = trans(r)
r = double(r);
t1 = 0.25*r.*(r<85.3);
t2 = 212.5+0.25*r.*(r>170.6);
t3 = 21.25+2.25*r.*(r>=85.3 & r<=170.6);
t = uint8(t1+t2+t3);
end