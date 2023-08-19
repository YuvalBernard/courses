%% Q0: Load data
clc;clear
filename = 'Kneset_result_2020a.xlsx';
data = readtable(filename);

%% Q1: Plot election results
tiledlayout(figure, 'flow');

% switch underscores with a proper whitespace.
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
parties_percentage = Y * 100 / sum(Y);
% populate only 5 biggest parties and show slice size
labels(explode) = parties(explode) + " (" + string(fix(parties_percentage(explode))) + "%)";
pie(Y, explode, labels)

% Plot 4
nexttile
text(0.05,0.9,strcat("total registered voters: ",num2str(sum(data.registered))))
text(0.05,0.8,strcat("total voters: ",num2str(sum(data.votes_valid))))
text(0.05,0.7,strcat("total voting rate (percentage): ",num2str(100 * sum(data.votes_valid) / sum(data.registered))))
text(0.05,0.6,strcat("total valid votes: ",num2str(sum(data.votes_valid))))
text(0.05,0.5,strcat("total invalid votes: ",num2str(sum(data.votes_invalid))))
text(0.05,0.4,strcat("votes threshold (counts): ",num2str(fix(0.0325 * sum(data.votes_valid)))))
text(0.05,0.3,strcat("votes threshold (percentage): ",num2str(3.25), "%"))

%% Q2
clearvars -except data; clc
[~, I] = sort(data.votes_valid./data.votes_total,'descend');
least_currupt = data.settlement_name(I(1:10));
disp("Top 10 settlements that had the highest percentage of valid votes:")
fprintf("%s\n", least_currupt{:})
most_currupt = data.settlement_name(I(end:-1:end-10));
disp("Top 10 settlements that had the lowest percentage of valid votes:")
fprintf("%s\n", most_currupt{:})

%% Q3: Explore voting pattern correlations
clearvars -except data; clc
%%% (a)
% Correlation should be between two matrices of the same size.
individual_voting_pattern = data{:,7:end}';
general_voting_pattern = repmat(sum(data{:,7:end}),length(individual_voting_pattern),1)';
correlation = corr(individual_voting_pattern, general_voting_pattern);
correlation = correlation(:,1); % The matrix's columns are copies of one another due to method of calculation.
%%% (b)
% Sort correlation values in descending order and pick first and last 10
% terms.
[~,I] = sort(correlation,'descend');
top_10_corr = data.settlement_name(I(1:10));
disp("the top 10 settlements that had the highest correlation to the general voting pattern:")
fprintf("%s\n", top_10_corr{:})
bot_10_corr = data.settlement_name(I(end:-1:end-10));
disp("the top 10 settlements that had the lowest correlation to the general voting pattern:")
fprintf("%s\n", bot_10_corr{:})
%%% (c)
inter_correlation = corr(individual_voting_pattern);
%%% (d)
% By highest correlation, we mean approaches one or negative one.
% The resulting matrix is a mirror of itself. Additionally, the diagonal is
% all ones. To find the highest correlating settlements, it is sufficient to take
% only one side of the matrix (upper or lower triangular part), excluding
% the main diagonal.
[~,I] = max(tril(abs(inter_correlation),-1),[],"all");
disp("Two settlements that had the highest correlation between their voting pattern:")
[row, col] = ind2sub(size(inter_correlation), I);
fprintf("%s and %s\n", data.settlement_name{row}, data.settlement_name{col})

% By lowest correlation, we mean approaches zero, and not the most negative one.
[~,I] = min(abs(inter_correlation),[],"all");
disp("Two settlements that had the lowest correlation between their voting pattern:")
[row, col] = ind2sub(size(inter_correlation), I);
fprintf("%s and %s\n", data.settlement_name{row}, data.settlement_name{col})

%% Q4
clearvars -except data correlation; clc

data_matrix = data{:,7:end};

%%% (a)
fprintf("Number of samples: %d\n", size(data_matrix,1)) % number of rows 
fprintf("Number of features: %d\n", size(data_matrix,2)) % number of columns

%%% (b)-(f)
rng(0)  % For reproducibility
n_replicates = 25;
metrics = {'sqeuclidean', 'cosine', 'correlation'};
ks = 2:10;
% Initialize vector to store average silhouette values.
avg_sil = zeros(size(ks));

for i = 1:length(metrics)
    f = figure(i);
    t = tiledlayout(f, 'flow');
    % Select metric
    title(t, ['Clustering analysis using the \bf' metrics{i} ' \rmmetric'])
    for j = 1:length(ks)
        nexttile
        % Cluster the data for each k in @ks, using metric in @metrics
        clust = kmeans(data_matrix, ks(j), 'Distance', metrics{i}, 'Replicates', n_replicates);
        % Compute silhouette values and generate plot
        [s, h] = silhouette(data_matrix, clust, metrics{i});
        % Calculate average silhouette value
        avg_sil(j) = mean(s);
        xlabel('Silhouette Value')
        ylabel('Cluster')
        title(['k = ' num2str(ks(j))])
    end
    % Corrently working with the 'correlation' metric.
    % Find optimal number of clusters.
    [M, I] = max(avg_sil);
    k_opt = ks(I);
    nexttile
    % Scatter plot of average silhouette value for each k
    scatter(ks, avg_sil)
    xlabel('k')
    ylabel('average silhouette value')
    hold on
    % Add annotation emphasizing optimal k.
    plot(k_opt, M, 'r*')
    text(k_opt, M, strcat("'\leftarrow optimal k: ",num2str(k_opt)))
    hold off
end

%%% (g)
% Using the `sqeuclidean` metric produced different results because
% it defines an objective function for minimization that has a remarkably
% different shape than the objective functions defined by the `cosine` and
% `correlation` metrics.

% `sqeuclidean` aims to minimize the sum of squared Euclidean distances,
% which can be interpreted minimizing the variance within each cluster.
% Other metrics do not satisfy the sum-of-variance equality (which holds
% for `sqeuclidean`). They inherently change the interpretation of `what is
% good clustering`.
% `correlation` and `cosine` try to maximize either:
% - the correlation between points in each cluster.
% - the cosine of the included angles between the points in the cluster.
%% Q6
clearvars -except data k_opt data_matrix n_replicates correlation; clc

% Cluster data using `correlation` metric, into @k_opt clusters.
clust = kmeans(data_matrix, k_opt, 'Distance', 'correlation', 'Replicates', n_replicates);
tiledlayout(figure, 'flow');

% Choose @kopt colors from the @lines colormap.
c = lines(k_opt);

% Plot 1
nexttile
% @sum(clust == 1:k_opt) is the number of points in each cluster
pie(sum(clust == 1:k_opt))
title("pie chart showing the size of each cluster")
legend("group " + string(1:k_opt), 'Location','northeastoutside')
set(gca,"Colormap",c)

% Plot 2
nexttile
% No idea what the hell they want

% Plot 3
nexttile
% Correlation was already computed in Q3. Use previous result.
hold on
for i = 1:k_opt
    histogram(correlation(clust == i))
end
legend("group " + string(1:k_opt), 'Location','northeastoutside')
title(["Histogram of correlation between voting pattern", "and general voting pattern for each cluster"])
set(gca,"Colormap",c)

% Plot 4
nexttile
num_votes = sum(data_matrix,2);
voting_rate = 100 * data.votes_valid ./ data.registered;
for i = 1:k_opt
    plot3(num_votes(clust == i),voting_rate(clust == i),correlation(clust == i),".")
    hold on
end
xlabel("number of votes")
ylabel("voting rate")
zlabel("correlation to total voting pattern")
title(["3D plot of the correlation to the total voting pattern",...
    "versus the voting rate and the number of votes",...
    "separated for each cluster"])
view(gca,[82.5, -11.87])
legend("group " + string(1:k_opt), 'Location','northeastoutside')
set(gca,"Colormap",c)

%%% (f)
% It is evident that the clusters differ by their of number of
% votes, voting rate, and correlation to the total voting pattern.
% For example, the data in group 1 (blue) has a high average correlation to the general
% voting pattern, with high diversity in the number of votes and low
% diversity in the voting rate. Conversely, the data in group 4 (yellow)
% exhibits lower average correlation to the general voting pattern, but has shows
% low dispersion in the number of votes.

%% Q8: Comparison between the elections
clc;clear

filenames = "Kneset_result_20" + ["19a", "19b", "20a"] + ".xlsx";
data_19a = readtable(filenames(1));
data_19b = readtable(filenames(2));
data_20a = readtable(filenames(3));

data_matrix_19a = data_19a{:,7:end};
data_matrix_19b = data_19b{:,7:end};
data_matrix_20a = data_20a{:,7:end};

%%% (a)
common_parties = intersect(intersect(data_19a.Properties.VariableNames(7:end),data_19b.Properties.VariableNames(7:end)),data_20a.Properties.VariableNames(7:end));
disp("parties that participated in all three elections:")
fprintf("%s\n", common_parties{:})

tiledlayout(figure, 'flow');

%%% (b)-(d)
% comparing 2019a and 2019b
nexttile
% Find common parties to both elections
[common_19a_19b,ia,ib] = intersect(data_19a.Properties.VariableNames(7:end),data_19b.Properties.VariableNames(7:end));
% Calculate sum of votes per each common party.
X = sum(data_matrix_19a(:,ia))';
Y = sum(data_matrix_19b(:,ib))';
% Perform linear regression via ordinary least squares.
linear_fit = horzcat(ones(size(X)),X)\Y;
% Plot results
scatter(X,Y,'filled'); hold on
plot(X, linear_fit(1) + linear_fit(2) * X,'r--')
xlabel("Total votes for each common party in 2019a")
ylabel("Total votes for each common party in 2019b")
title("Comparing 2019a and 2019b elections. Correlation is: " + num2str(corr(X,Y)))
legend("data","linear fit",'Location','northwest')

% comparing 2019a and 2020a
nexttile
[common_19a_20a,ia,ib] = intersect(data_19a.Properties.VariableNames(7:end),data_20a.Properties.VariableNames(7:end));
X = sum(data_matrix_19a(:,ia))';
Y = sum(data_matrix_20a(:,ib))';
linear_fit = horzcat(ones(size(X)),X)\Y;
scatter(X,Y,'filled'); hold on
plot(X, linear_fit(1) + linear_fit(2) * X,'r--')
xlabel("Total votes for each common party in 2019a")
ylabel("Total votes for each common party in 2020a")
title("Comparing 2019a and 2020a elections. Correlation is: " + num2str(corr(X,Y)))
legend("data","linear fit",'Location','northwest')

% comparing 2019a and 2020a
nexttile
[common_19b_20a,ia,ib] = intersect(data_19b.Properties.VariableNames(7:end),data_20a.Properties.VariableNames(7:end));
X = sum(data_matrix_19b(:,ia))';
Y = sum(data_matrix_20a(:,ib))';
linear_fit = horzcat(ones(size(X)),X)\Y;
scatter(X,Y,'filled'); hold on
plot(X, linear_fit(1) + linear_fit(2) * X,'r--')
xlabel("Total votes for each common party in 2019b")
ylabel("Total votes for each common party in 2020a")
title("Comparing 2019b and 2020a elections. Correlation is: " + num2str(corr(X,Y)))
legend("data","linear fit",'Location','northwest')

%%% (e)
nexttile
X = categorical(strrep(common_parties','_',' '));
[~,idx_19a] = ismember(common_parties, data_19a.Properties.VariableNames(7:end));
[~,idx_19b] = ismember(common_parties, data_19b.Properties.VariableNames(7:end));
[~,idx_20a] = ismember(common_parties, data_20a.Properties.VariableNames(7:end));
Y = vertcat(sum(data_matrix_19a(:,idx_19a)), sum(data_matrix_19b(:,idx_19b)), sum(data_matrix_20a(:,idx_20a)));
bar(X,Y,'stacked')
legend("2019a", "2019b", "2020a")
ylabel("Total votes per party")
xlabel("Party")
title("Comparing total votes for each party")

%% Q9
clearvars -except data_19a data_19b data_20a; clc
tiledlayout(figure, 'flow')

%%% (a)+(b)
nexttile
X = categorical(["GESHER 19a", "AVODA 19a", "MERETZ 19a", "GESHER+AVODA 19b", "MERETZ 19b", "GESHER+AVODA+MERETZ 20a"]);
Y = sum([data_19a.GESHER, data_19a.AVODA, data_19a.MERETZ, data_19b.AVODA_GESHER, data_19b.MERETZ, data_20a.AVODA_GESHER_MERETZ]);
bar(X,Y); yline(0.035 * sum(data_20a.votes_valid),'-',"Votes threshold 2020a")
ylabel("Total number of votes")
% Choose title dynamically
if sum(data_20a.AVODA_GESHER_MERETZ) > sum([data_19a.GESHER, data_19a.AVODA, data_19a.MERETZ],'all')
    title("AVODA+GESHER+MERETZ (2020a) > AVODA + GESHER + MERETZ (2019a): true")
else
    title("AVODA+GESHER+MERETZ (2020a) > AVODA + GESHER + MERETZ (2019a): false")
end

%%% (c)
nexttile
% find top 100 likud settlements in 2019a
% [~,I] = sort(data_20a.LIKUD./data_20a.votes_valid,'descend');
[~,I] = sort(data_20a.LIKUD,'descend');
X = categorical(["GESHER 19a", "AVODA 19a", "MERETZ 19a", "GESHER+AVODA+MERETZ 20a"]);
Y = sum([data_19a.GESHER(I(1:100)), data_19a.AVODA(I(1:100)), data_19a.MERETZ(I(1:100)), data_20a.AVODA_GESHER_MERETZ(I(1:100))]);
bar(X,Y)
ylabel("Total number of votes from Likud settlements")
% Again, choose title dynamically
if sum(Y(1:3)) > Y(4)
    title(["The union of AVODA, GESHER and MERETZ", "decreased the number of votes for the likud"])
else
    title(["The union of AVODA, GESHER and MERETZ", "increased the number of votes for the likud"])
end


%% Q10

% In 2019a, compare the voting rate between small and large settlements
% (threhold: at least 5000 citizens and 75% voting rate).
% Show result as a pie chart for each category.

clc; clear; data = readtable('Kneset_result_2020a.xlsx');

size_threshold = 5000;
voting_threshold = 0.75;
small_settlements = data(data.registered <= size_threshold,:);
large_settlements = data(data.registered > size_threshold,:);

voting_rate_small_above_threshold = sum(small_settlements.votes_valid ./ small_settlements.registered >= voting_threshold);
voting_rate_small_below_threshold = height(small_settlements) - voting_rate_small_above_threshold;

voting_rate_large_above_threshold = sum(large_settlements.votes_valid ./ large_settlements.registered >= voting_threshold);
voting_rate_large_below_threshold = height(large_settlements) - voting_rate_large_above_threshold;

t = tiledlayout(1,2,'TileSpacing','compact');
title(t, "Comparing voting rates in 2019a election")
nexttile
pie([voting_rate_small_above_threshold, voting_rate_small_below_threshold])
title("Small settlements")

nexttile
pie([voting_rate_large_above_threshold, voting_rate_large_below_threshold])
title("Large settlements")

legend("Voting rate above 75%", "Voting rate below 75%",'Location','northeastoutside')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Questions about the assignment:
% - Q2d. So the names of the other parties should be hidden?
%        Do you want the percentage next to the name of the 5 biggest?
% - Q2e. Total voters, irrespective of if the votes are valid or invalid?
%        Voting rate calculated via valid votes only?
% - Q3d. High and low correlations by means of absolute magnitude,
%        irrespective of the sign?
% - Q6c. What do you mean by voting pattern for each cluster?
%        If you mean the sum of votes for each party over all settlements in
%        the cluster, what should be the x-axis in the plot?
%        How is the general voting pattern a single value? It should be a
%        vector...
% - Q8b. Do you want to account only for parties common to the three
%        elections? Or parties common to each pair?
%        A scatter plot of sum of votes for common parties in election (a)
%        vs sum of votes for common parties in election (b)?
% - Q9c. Filter settlements by total votes to Likud,
%        normalized by the number of valid votes in the settlement?
%        What else do you mean in top 100 in percentage?
%        In the bar graph, 2019b results should be discarded?