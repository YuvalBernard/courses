load data_hw2_2023b.mat
%% Q1
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% Calculate the average and its index.
avg = mean(results);
[~,I] = max(avg);
fprintf('Day %d had the highest average score\n', I)
%% Q2
% Make non-valid results equal to zero and recalculate mean.
clc; clearvars -except valid_results results experimental_group norm_day_coeff
avg_valid = mean(results .* valid_results);
[~,I_valid] = max(avg_valid);
fprintf('Day %d had the highest average score\n', I_valid)
%% Q3
clc; clearvars -except valid_results results experimental_group norm_day_coeff
%%% (a)
max_per_day = max(results);
[M,I] = max(max_per_day);
fprintf('Day %d has the highest score.\nThe value is %f\n',I,M)
%%% (b)
% Here @LI stands for 'linear index',
% as index is given in a linear fashion.
[M,LI] = max(results,[],'all');
[~,col] = ind2sub(size(results),LI);
fprintf('Day %d has the highest score.\nThe value is %f\n',col,M)
%% Q4
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% Calculate average test score per animal
avg_per_row = mean(results, 2);
% Sort @avg_per_row in ascending order, and display the first 4 values.
[avg_sorted,I] = sort(avg_per_row);
fprintf('Animal %d had average score %d.\n', [I(1:4), floor(avg_sorted(1:4))].')
%% Q5
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% Calculate std for each row
std_per_animal = std(results, 0, 2);
% Calculate std for each column
std_per_day = std(results);
fprintf('Mean of day .d: %f\n', mean(std_per_day));
fprintf('Mean of animal s.d: %f\n', mean(std_per_animal));
fprintf('Larger mean s.d: %f\n', max([mean(std_per_day), mean(std_per_animal)]))
%% Q6
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% calculate diff along row and return index of min.
[~,I] = min(mean(diff(results,1,2)));
fprintf('Animal %d had the slowest average improvement.\n', I)
%% Q7
clc; clearvars -except valid_results results experimental_group norm_day_coeff
fprintf('Animal %d\n', 1:2:29)
%% Q8
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% matrix multiplication performs the requested action. 
% Function @ceil rounds numbers up.
fprintf('Animal %d: %d\n',[1:1:30; ceil(results * norm_day_coeff).'])
%% Q9
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% Divide results into requested groups,
% and calculate each group's mean
group_1_mean_per_day = mean(results(experimental_group == 1,:));
group_2_mean_per_day = mean(results(experimental_group == 2,:));
fprintf('Day %d: group %d had higher mean score\n', ...
    [1:10; (group_2_mean_per_day > group_1_mean_per_day) + 1])
%% Q10
clc; clearvars -except valid_results results experimental_group norm_day_coeff
% Option 1: Using function @sortrows
[~,cols] = size(results);
results_sorted = sortrows(results,cols,'descend');
% Test yourself
fprintf('Mean of first row after sorting: %.2f\n', mean(results_sorted(1,:)))
% Option 2: Using function @sort
[~,I] = sort(results(:,end),'descend');
results_sorted_alt = results(I,:);
% Test yourself
fprintf('Mean of first row after sorting: %.2f\n', mean(results_sorted(1,:)))
