% HW4 solution
% Yuval Bernard 211860754
%% Q1
disp('*** Question 1 ***')
clc; clear
%%% section (1) + (2)
% Here we solve questions 1 and 2 simutaneously.
% Create an anonymous function that creates a meshgrid given
% an interval and x,y range.
my_grid = @(interval,range) meshgrid(-range:interval:range);
% Save requested intervals and ranges into arrays
ranges = [3,5,10];
interval_list = [0.2, 0.4, 0.02, 0.05];

for j = 1:length(ranges)
    figure
    i = 1;
    range = ranges(j);
    while i < 5
        % Create meshgrid
        [X,Y] = my_grid(interval_list(i), range);
        % Calculate Z values
        Z = -Y .* (X.^2 - Y.^2) ./ (X.^2 + Y.^2 + eps);
        subplot(2,2,i)
        switch i
            case 3
                surf(X,Y,Z,'EdgeColor','none')
            case 4
                contourf(X,Y,Z)
            otherwise
                surf(X,Y,Z)
        end
        i = i + 1;
    end
end
disp('  ')
%% Q2
disp('*** Question 2 ***')
clc; clear; close all
%%% section (1)
ara_bad = [
    0.003   0.026   0.104   0.26    0.38    0.464   0.565   0.73    0.858   0.883   0.925   1
    0.003   0.007   0.026   0.104   0.26    0.38    0.464   0.507   0.571   0.609   0.609   0.783
    0.002   0.002   0.007   0.023   0.063   0.168   0.329   0.418   0.446   0.482   0.496   0.503
    0.002   0.002   0.002   0.002   0.003   0.021   0.075   0.147   0.231   0.269   0.275   0.294
    0.002   0.002   0.002   0.002   0.002   0.002   0.009   0.054   0.136   0.164   0.198   0.203
    0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.004   0.037   0.079   0.124   0.137
    0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.03    0.077   0.099
    0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.002   0.004   0.03    0.077];

% Open fig in fullscreen
figure('WindowState', 'maximized')
% Create a 2x2 subplot template
t = tiledlayout(2,2);

surfc_azimuth = [-42.1, 35];
surf_azimuth = [49.5, 23];

nexttile;
surf(ara_bad)
xlabel("Arabinose [A.U.]"); ylabel("cAMP [A.U.]"); zlabel("AraBAD")
title('surf plot','FontSize',12,'FontWeight','bold')
view(surf_azimuth)

nexttile;
surfc(ara_bad)
xlabel("Arabinose [A.U.]"); ylabel("cAMP [A.U.]"); zlabel("AraBAD")
title('surfc plot','FontSize',12,'FontWeight','bold')
view(surfc_azimuth)

nexttile
bar3(ara_bad)
xlabel("Arabinose [A.U.]"); ylabel("cAMP [A.U.]"); zlabel("AraBAD")
title('bar3 plot','FontSize',12,'FontWeight','bold')
xticks([]); yticks([])

nexttile
contour(ara_bad)
xlabel("Arabinose [A.U.]"); ylabel("cAMP [A.U.]"); zlabel("AraBAD")
title('contour plot','FontSize',12,'FontWeight','bold')
xticks([]); yticks([])

%%% section (2)
% The colors represent the values of the given matrix.
% At each (integer-valued) point on the x-y plane,
% the value at [x,y]=[i,j] is ara_bad(i,j).
% There are the same for all plot types.

%%% section (3)
% No meshgrid is needed in this case,
% as the column and row indices can be used
% as x-y coordinates.
disp('  ')
%% Q3
disp('*** Question 3 ***')
clear; clc; close all
% Get list of .tif files in 'images_dir'.
dir_list = dir('images_dir/*.TIF');
% Initialize array to store frames.
F(length(dir_list)) = struct('cdata',[],'colormap',[]); 
f = figure;
for ii_image = 1:length(dir_list)
    % Read image in an os-agnostic manner
    Im = imread(fullfile(dir_list(ii_image).folder, dir_list(ii_image).name));
    % imadjust is used in the follwing cell  to increase the image contrast.
    Im = imadjust(Im);
    % Populate figure window
    imshow(Im);
    % Save figure to frame.
    F(ii_image) = getframe(gcf);
end
% Create movie from saved frames.
movie(f, F)
disp('  ')
%% Q4
disp('*** Question 4 ***')
clear; clc; close all
% Here we load a chemical exchange saturation transfer (CEST)
% experiment, where the horizontal axis represents
% the frequency of an alternating magnetic field that saturates the magnetic moment of
% a 1/2-spin ensemble, and the vertical axis repersent the measured attenuation of
% the magnetization of another 1/2-spin ensemble, which is in close
% proximity and can exchange nuclei.
% The RF field frequency is relative 
% to the resonance frequency of the second 1/2-spin ensemble.

% Load table as a .mat file. Actually a table
load HW4_211860754_Yuval_Bernard.mat

% First plot: generic lineplot that shows the CEST spectrum:
subplot(2,1,1)
plot(T.Offset, T.Measurement)
xlabel('Offset (Hz)'); ylabel('Degree of attenuation (arb)')
title(['CEST Z-spectrum for LP30 Lithium dendrite' ...
    ' in a Lithium electrolyte solution'])

% Second plot: histogram of measuremened attenuation values.
% Required in a Bayesian fitting paradigm (posterior predictive checks),
% where simulated spectra generated from random model parameter samples
% are plotted as histograms on top of the histogram of the observed data.
% If the histograms follow the same shape as the observed data,
% then the posterior is considered acceptable for inference.
subplot(2,1,2)
histogram(T.Measurement)
xlabel('Degree of attenuation (arb)')
ylabel('#times repeated')
title('Histogram of measured values, to be compared with random posterior simulations')

disp('  ')
