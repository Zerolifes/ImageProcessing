function s = std(matrix)
matrix = double(matrix);
sz = double(size(matrix));
n = sz(1)*sz(2)*sz(3);
m = mean(matrix);
s = sqrt(sum((matrix-m).^2,'all')/(n-1));
end