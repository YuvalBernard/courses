%% Q1
%%% section (1)
img = imread("Kjelstrup_et_al_Science_2008.jpg");
imshow(img)
% Show real coordinates on figure, just to get
% some idea on the return values
h = gca;
h.XAxis.Visible = 'on'; h.YAxis.Visible = 'on';

%%% section (2)
% Store 12 point in sequential order.
% First 4: White Squares, Second 4: Black Squares, Third 4: Triangles 
[x, y] = ginput(12);
% Store 3 points: axis origin, limit of x-axis, limit of y-axis
[x_cal, y_cal] = ginput(3);

save ex6_21186-754.mat x y x_cal y_cal

%% Q2
close all
load ex6_21186-754.mat
img = imread("Kjelstrup_et_al_Science_2008.jpg");

% Calibrate points from @ginput
[x_normalized, y_normalized] = normalize_axis(x, y, x_cal, y_cal);
% Fit data to linear model
X = horzcat(ones(length(x_normalized),1), x_normalized);
coeffs = X \ y_normalized;
y_fit = X * coeffs;
y_pred = [1, 40] * coeffs;

% Plot original figure + recreated figure + regression line
figure
ax1 = axes('Position', [0.7 0.7 0.3 0.3]);
imshow(img)
ax2 = axes('Position', [0.1 0.1 0.6 0.6]);
hold on
h1 = plot(x_normalized(5:8), y_normalized(5:8), 'k-s',...
    'MarkerFaceColor',[0,0,0],'MarkerEdgeColor',[0,0,0],'MarkerSize',10,...
    'DisplayName','Largest Field Width');
h2 = plot(x_normalized(1:4), y_normalized(1:4), 'k-s',...
    'MarkerFaceColor',[1,1,1],'MarkerEdgeColor',[0,0,0],'MarkerSize',10,...
    'DisplayName','Population-vector half-width');
h3 = plot(x_normalized(9:12), y_normalized(9:12), 'k-^',...
    'MarkerFaceColor',[1,1,1],'MarkerEdgeColor',[0,0,0],'MarkerSize',10,...
    'DisplayName','Spatial Autocorrelation');
h4 = plot(x_normalized, y_fit, '--', 'DisplayName','Linear Regression');
scatter(40, y_pred, 50, 'blue')
text(40, y_pred, 'prediction  ', 'HorizontalAlignment','right', 'FontSize',12)
legend([h1,h2,h3,h4],'Location','best')
xlim([0,100]); ylim([0,8]);
title('Kjelstrup et al. Science 2008')
xlabel('Position of DV axis (%)')
ylabel('Distance (m)')
xticks(0:20:100)
yticks(0:1:8)

saveas(gcf, 'ex6_figure_211860754.jpg')

% Create a function that converts measured
% points to points on original figure.
function [x_normalized, y_normalized] = normalize_axis(x, y, x_cal, y_cal)
% Use linear regression to correlate measured
% coordinates to points on correct axis.
% @x_cal contains (in order):
% - a point at x = 0
% - a point at x = 100
% - a point a x = 0
% @y_cal contains (in order):
% - a point at y = 0
% - a point at y = 0
% - a point at y = 8

% For each axis direction constract a best-fit line.
% Given y = b0 + b1 * x + error,
% [y1;y2;y3] = [1,x1;1,x2;1,x3] * [b0;b1]
% [b0;b1] = [y1;y2;y3] \ [1,x1;1,x2;1,x3];
% Look up 'Linear Regression' at mathworks help center
% for more information.

x_cal = horzcat(x_cal, [0;100;0]);
y_cal = horzcat(y_cal, [0;0;8]);

X = horzcat(ones(length(x_cal),1), x_cal(:,1));
Y = horzcat(ones(length(y_cal),1), y_cal(:,1));

coeff_x = X \ x_cal(:,2);
coeff_y = Y \ y_cal(:,2);

x_normalized = coeff_x(1) + coeff_x(2) * x;
y_normalized = coeff_y(1) + coeff_y(2) * y;
end