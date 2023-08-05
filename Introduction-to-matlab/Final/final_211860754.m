%% Q0: Load data
filename = 'Kneset_result_2020a.xlsx';
data = readtable(filename);

%% Q1: Plot election results
f = figure;
tiledlayout(f, 2, 2);

parties = data.Properties.VariableNames(7:end);

% Plot 1
nexttile
X = categorical(parties);
Y = sum(data{:, 7:end});
bar(X,Y)
yline(0.0325 * sum(data.votes_valid),'-','Votes threshold');
title('Total number of votes (in counts), per party, over all settlements')
xlabel('Party')
ylabel('# votes')

% Plot 2
nexttile
bar(X,Y)
yline(0.0325 * sum(data.votes_valid),'-','Votes threshold');
set(gca,'YScale','log')
title('Total number of votes (in counts), per party, over all settlements (log scale)')
xlabel('Party')
ylabel('# votes (log scale)')

% Plot 3
nexttile
% find 5 biggest parties
[~,I] = sort(Y,'descend');
explode = ismember(Y,Y(I(1:5)));
pie(Y, explode, parties)

% Plot 4
nexttile
text(0.05,0.9,strcat("total registered voters: ",num2str(sum(data.registered))))
text(0.05,0.7,strcat("total voters: ",num2str(sum(data.votes_valid))))
text(0.05,0.5,strcat("total voting rate (%): ",num2str(100 * sum(data.votes_valid) / sum(data.registered))))
text(0.05,0.3,strcat("total valid votes: ",num2str(sum(data.votes_valid))))
text(0.05,0.1,strcat("total invalid votes: ",num2str(sum(data.votes_invalid))))
text(0.6,0.6,strcat("votes threshold (counts): ",num2str(fix(0.0325 * sum(data.votes_valid)))))
text(0.6,0.4,strcat("votes threshold (percentage): ",num2str(3.25), "%"))

%% Q2
clearvars -except data; clc
[~, I] = sort(data.votes_valid./data.votes_total,'descend');
non_currupt = data.settlement_name(I(1:10));
disp("the top 10 settlements that had the highest percentage of valid votes:")
fprintf("%s\n", non_currupt{:})
I = flipud(I); most_currupt = data.settlement_name(I(1:10));
disp("the top 10 settlements that had the lowest percentage of valid votes:")
fprintf("%s\n", most_currupt{:})

%% Q3
clearvars -except data; clc
%%% (a)
individual_voting_pattern = data{:,7:end}';
general_voting_pattern = repmat(sum(data{:,7:end}),length(individual_voting_pattern),1)';
correlation = corr(individual_voting_pattern, general_voting_pattern);
correlation = correlation(:,1); % The matrix's columns are copies of one another due to method of calculation.
%%% (b)
[~,I] = sort(correlation,'descend');
top_10_corr = data.settlement_name(I(1:10));
disp("the top 10 settlements that had the highest correlation to the general voting pattern:")
fprintf("%s\n", top_10_corr{:})
I = flipud(I); bot_10_corr = data.settlement_name(I(1:10));
disp("the top 10 settlements that had the lowest correlation to the general voting pattern:")
fprintf("%s\n", bot_10_corr{:})
%%% (c)
inter_correlation = corr(data{:,7:end}');
%%% (d)
% By highest correlation, we mean approaches one or negative one.
[~,I] = max(tril(abs(inter_correlation),-1),[],"all");
disp("the two settlements that had the highest correlations between their voting pattern:")
[row, col] = ind2sub(size(inter_correlation), I);
fprintf("%s and %s\n", data.settlement_name{row}, data.settlement_name{col})

% By lowest correlation, we mean approaches zero, and not the most negative one.
[~,I] = min(abs(inter_correlation),[],"all");
disp("the two settlements that had the lowest correlations between their voting pattern:")
[row, col] = ind2sub(size(inter_correlation), I);
fprintf("%s and %s\n", data.settlement_name{row}, data.settlement_name{col})

%% Q4
clearvars -except data; clc
