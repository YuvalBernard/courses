%% Personal information
% Yuval Bernard 211860754

% A flag to skip the first question
I_am_a_TA = 1;
if ~I_am_a_TA
    %% Question 1.1
    disp('Question 1')
    img = imread("Kjelstrup_et_al_Science_2008.jpg");
    imshow(img)
    
    %% Question 1.2
    % Store 12 point in sequential order.
    % First 4: White Squares, Second 4: Black Squares, Third 4: Triangles 
    [x, y] = ginput(12);
    %% Question 1.3
    % Store 3 points: axis origin, limit of x-axis, limit of y-axis
    [x_cal, y_cal] = ginput(3);
    %% Question 1.4
    save ex6_21186-754.mat x y x_cal y_cal
end
%% Question 2.1
disp('Question 2')
% Load measurements from previos question + load image data
load ex6_21186-754.mat
img = imread("Kjelstrup_et_al_Science_2008.jpg");

%% Question 2.2
% Create axes for plotting, and show image on the first one
figure
ax1 = axes('Position', [0.7 0.7 0.3 0.3]);
imshow(img)
ax2 = axes('Position', [0.1 0.1 0.6 0.6]);
hold on
%% Question 2.3
% Data contains points from graph in this order:
% First 4: White Squares, Second 4: Black Squares, Third 4: Triangles 

% Calibrate points from @ginput,
% using the @normalize_axis local function (see EOF for details)
[x_normalized, y_normalized] = normalize_axis(x, y, x_cal, y_cal);
% Fit data to linear model

h1 = plot(x_normalized(5:8), y_normalized(5:8), 'k-s',...
    'MarkerFaceColor',[0,0,0],'MarkerEdgeColor',[0,0,0],'MarkerSize',10,...
    'DisplayName','Largest Field Width');
h2 = plot(x_normalized(1:4), y_normalized(1:4), 'k-s',...
    'MarkerFaceColor',[1,1,1],'MarkerEdgeColor',[0,0,0],'MarkerSize',10,...
    'DisplayName','Population-vector half-width');
h3 = plot(x_normalized(9:12), y_normalized(9:12), 'k-^',...
    'MarkerFaceColor',[1,1,1],'MarkerEdgeColor',[0,0,0],'MarkerSize',10,...
    'DisplayName','Spatial Autocorrelation');
%% Question 2.4
% Look up 'Linear Regression' at mathworks help center
% for details on how fitting is done here.
X = horzcat(ones(length(x_normalized),1), x_normalized);
coeffs = X \ y_normalized;
y_fit = X * coeffs;
% Plot regression line
h4 = plot(x_normalized, y_fit, '--', 'DisplayName','Linear Regression');
% Predict data at 40%
y_pred = [1, 40] * coeffs;
% Plot prediction as a blue scatter point.
scatter(40, y_pred, 50, 'blue')
% Add point description to its left.
text(40, y_pred, 'prediction  ', 'HorizontalAlignment','right', 'FontSize',12)

%% Question 2.5
% Annotate graph as requested.
legend([h1,h2,h3,h4],'Location','best')
xlim([0,100]); ylim([0,8]);
title('Kjelstrup et al. Science 2008')
xlabel('Position of DV axis (%)')
ylabel('Distance (m)')

%% Question 2.6
xticks(0:20:100)
yticks(0:1:8)

%% Question 2.7
saveas(gcf, 'ex6_figure_211860754.jpg')

%%% EOF

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