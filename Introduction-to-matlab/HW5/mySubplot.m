function mySubplot(nrow, ncol,idx)
% error handling
if sum([ncol, nrow, idx]) ~= sum(fix([ncol, nrow, idx]))
    error('All inputs must be integers')
end

x_idx = idx; y_idx = 1;

while x_idx > ncol
    x_idx = x_idx - ncol;
    y_idx = y_idx + 1;
end

h_marg = 0.05; v_marg = 0.05;
h_space = 0.08; v_space = 0.08;
width = (1 - 2*h_marg - (ncol-1)*h_space) / ncol;
height = (1 - 2*v_marg - (nrow-1)*v_space) / nrow;
x_pos = h_marg + (x_idx-1) * (h_space+width);
y_pos = 1 - v_marg - y_idx * height - (y_idx-1) * v_space;


axes('Position', [x_pos y_pos width height], 'Box', 'on');
end