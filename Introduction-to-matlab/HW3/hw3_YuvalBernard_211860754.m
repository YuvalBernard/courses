%%
% HW3 solution
% Yuval Bernard 211860754
%% Q1
clc;clear
disp('*** Question 1 ***')
%%% (a)
load q1a_to_f_conductivity.mat
%%% (b)
conc_mean = mean(conductivity);
conc_med = median(conductivity);
%%% (c)
figure(1)
hold on
xlabel('Concentration [mol dm^{-3}]')
ylabel('Conductivity')
title('Conductivity vs concentration over 16 electrolytes')
plot(concentration,conc_mean,'k','LineWidth',1.5,...
    'DisplayName','Mean across electrolytes')
plot(concentration,conc_med,'b','LineWidth',1.5,...
    'DisplayName','Median across electrolytes')
legend('Location','southwest')
%%% (d)
clc; clearvars -except concentration electrolyte_names conductivity
% Find and exclude index of HCl in @electrolyte_names
idx = ~strcmp(electrolyte_names,'HCl');
electrolyte_names_no_hcl = string(electrolyte_names(idx));
cond_no_hcl = conductivity(idx,:);
global_min = min(cond_no_hcl,[],'all');
global_max = max(cond_no_hcl,[],'all');
figure(2); hold on
set(gca, 'ColorOrder', lines(length(cond_no_hcl)))
xlabel('Concentration')
ylabel('Conductivity')
ylim([global_min - 15, global_max + 15])
title('Conductivity vs concentration for different electrolytes, excluding HCl')
for i = 1:length(cond_no_hcl)
    plot(concentration, cond_no_hcl(i,:),...
        'DisplayName',electrolyte_names_no_hcl(i),'LineWidth',1.5)
    fprintf('%s: min = %.2f, max = %2.f\n',...
        electrolyte_names_no_hcl(i), min(cond_no_hcl(i,:)), max(cond_no_hcl(i,:)))
end
legend('Location','southoutside','NumColumns',3)
%%% (e)
clc; clearvars -except concentration electrolyte_names conductivity
figure(3);
bar(categorical(electrolyte_names), max(conductivity,[],2))
xlabel('Electrolyte')
ylabel('Conductivity')
title('Maximum conductivity for each electrolyte')
%%% (f)
clc; clearvars -except concentration electrolyte_names conductivity
diff_per_elec = max(conductivity,[],2) - min(conductivity,[],2);
[~,I_max] = max(diff_per_elec);
[~,I_min] = min(diff_per_elec);
figure(4)
xlabel('Concentration')
ylabel('Conductivity')
title('Electrolytes that showed largest and least change in conductivity')
hold on;
plot(concentration,conductivity(I_max,:),'r',...
    'DisplayName',['Largest diff: ' char(electrolyte_names(I_max))])
plot(concentration,conductivity(I_min,:),'b',...
    'DisplayName',['Least diff: ' char(electrolyte_names(I_min))])
legend("show")
%%% (g)
clc; clearvars -except concentration electrolyte_names conductivity
load q1g_pH_in_solution.mat
neutral = 7;
acidic = pH(:, 1) < neutral;
alkaline = pH(:, 1) > neutral;
subplot(2,1,1)
plot(temp,pH(acidic, :))
title('Acidic solutions: pH vs temperature')
legend(char(solution_names(acidic)),'Location','eastoutside')
subplot(2,1,2)
plot(temp,pH(alkaline, :))
legend(char(solution_names(alkaline)),'Location','eastoutside')
title('Alkaline solutions: pH vs temperature')
disp('  ')
%% Q2
disp('*** Question 2 ***')
clc;clear
img = imread('q2_image_hw3_2022b.jpg');
figure(6); imshow(img)
%%% (a)
collage = repmat(img,2,2);
[rows,cols,~] = size(img);
collage(1:rows, 1:cols, [2,3]) = 0;
collage(1:rows, cols+1 : 2*cols, [1,3]) = 0;
collage(rows+1 : 2*rows, 1:cols, [1,2]) = 0;
figure(7); imshow(collage);
% Explanation: RGB is an additive color model.
% So adding 0% Red and Green gives only Blue at specified intensities,
% and similarly for the other combinations.
collage(1:rows, 1:cols, [2,3]) = 255;
collage(1:rows, cols+1 : 2*cols, [1,3]) = 255;
collage(rows+1 : 2*rows, 1:cols, [1,2]) = 255;
figure(8); imshow(collage)
% Explanation: 
% - Combining 100% R + B gives Cyan at specified intensities
% - Combining 100% R + G gives Yellow at specified intensities
% - Combining 100% G + B gives Magenta at specified intensities
%%% (b)
% Flip array along the third dimension.
figure(9); imshow(flip(img,3))
% Effect is RGB -> BGR.
% - Red parts turned Blue,
% - Green parts stayed the same,
% - Blue parts turned Red
%%% (c)
imshow([img; flipud(img)])
disp('  ')