function mu = mean(matrix)
sz = double(size(matrix));
mu = double(sum(matrix,'all'))/sz(1)/sz(2)/sz(3);
end