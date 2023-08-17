%% Q0: Load data
filename = 'Kneset_result_2020a.xlsx';
data = readtable(filename);

%% Q1: Plot election results
f = figure;
tiledlayout(f, 'flow');

% switch horrible underscore with a proper whitespace.
parties = strrep(data.Properties.VariableNames(7:end),'_',' ');

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
% explode 5 biggest parties
explode = ismember(Y,Y(I(1:5)));
% create empty array of strings
labels = strings(size(parties));
% populate only 5 biggest parties
labels(explode) = parties(explode);
pie(Y, explode, labels)

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
most_currupt = data.settlement_name(I(end:-1:end-10));
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
bot_10_corr = data.settlement_name(I(end:-1:end-10));
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

%%% (a)
fprintf("Number of samples: %d\n", size(data,1))
fprintf("Number of features: %d\n", size(data,2) - 6)

%%% (b)-(f)
rng(0)  % For reproducibility
data_matrix = data{:,7:end};
n_replicates = 25;
metrics = {'sqeuclidean', 'cosine', 'correlation'};
ks = 2:10;
avg_sil = zeros(size(ks));

for i = 1:length(metrics)
    f = figure(i);
    t = tiledlayout(f, 'flow');
    title(t, ['Clustering analysis using the \bf' metrics{i} ' \rmmetric'])
    for j = 1:length(ks)
        nexttile
        clust = kmeans(data_matrix, ks(j), 'Distance', metrics{i}, 'Replicates', n_replicates);
        [s, h] = silhouette(data_matrix, clust, metrics{i});
        avg_sil(j) = mean(s);
        xlabel('Silhouette Value')
        ylabel('Cluster')
        title(['k = ' num2str(ks(j))])
    end
    [M, I] = max(avg_sil);
    k_opt = ks(I);
    nexttile
    scatter(ks, avg_sil)
    xlabel('k')
    ylabel('average silhouette value')
    hold on
    plot(k_opt, M, 'r*')
    text(k_opt, M, strcat("'\leftarrow optimal k: ",num2str(k_opt)))
    hold off
end

%%% (g)
% I have no idea why using the 'sqeuclidean' created different results...

%% Q5
clearvars -except data k_opt data_matrix n_replicates; clc
k = k_opt;
clust = kmeans(data_matrix, k_opt, 'Distance', 'correlation', 'Replicates', n_replicates);
tiledlayout(figure, 'flow');


%% Q8
clearvars -except data; clc

