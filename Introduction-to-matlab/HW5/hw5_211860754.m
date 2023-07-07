% HW5 solution
% Yuval Bernard 211860754
% MATLAB version: R2023a
function hw5_211860754()
clc;clear; close all
%% Q1
    function mySubplot(nrow, ncol,idx)
        % Hand-made implementation of MATLAB's @subplot function.

        % function gets number of rows and columns to plot graphs in,
        % as well as the index of the current graph, and supplies an axis
        % to plot in.
        % Inputs are all positive, whole numbers.

        % error handling.
        % 'fix' rounds all input to nearest integers,
        % so sum of input array after 'fix' should be equal
        % to the regular sum, if inputs are positive whole numbers.
        if sum([ncol, nrow, idx]) ~= sum(fix([ncol, nrow, idx]))
            error('All inputs must be integers')
        end

        % Create indices to help mark the position
        % of the output axis coordinates
        x_idx = idx; y_idx = 1;

        while x_idx > ncol
            x_idx = x_idx - ncol;
            y_idx = y_idx + 1;
        end
        
        % Specify horizontal and vertical margins and spacing
        h_marg = 0.05; v_marg = 0.05;
        h_space = 0.08; v_space = 0.08;
        
        % Calculate the width and height of the axis
        width = (1 - 2*h_marg - (ncol-1)*h_space) / ncol;
        height = (1 - 2*v_marg - (nrow-1)*v_space) / nrow;
        
        % Calculate the coordinates of the axis origin
        x_pos = h_marg + (x_idx-1) * (h_space+width);
        y_pos = 1 - v_marg - y_idx * height - (y_idx-1) * v_space;
        
        % Create an axis in the requested position
        axes('Position', [x_pos y_pos width height], 'Box', 'on');
    end
%% Q2
disp('*** Question 2 ***')
    function res = myFactorial(n)
        % Calculate n! via recursion
        
        % Input: whole, positive number n
        % Output: factorial of n

        % error handling. n should be a positive, whole number
        if n ~= fix(n) || n < 0
            error('N must be a positive integer.')
        end

        % recursive step. n! = n * (n-1)!
        if n >= 1
            res = n * myFactorial(n-1);
        
        % base step. 0! = 1
        else
            res = 1;
        end
    end

% Test function.
n = 10;
fprintf('Factorial of %d is: %d\n', n, myFactorial(n))
%% Q3
disp('*** Question 3 ***')
    function res = calcTaylorExp(x, N)
        % Approximate exp(x) to order N via recursion.

        % error handling. N should be a positive whole number
        if N ~= fix(N) || N < 0
            error('N must be a positive integer.')
        end

        % base case. (x^0)/0! = 1
        if N == 0
            res = 1;
        else
        
        % recursive step. exp(x) ~ (x^n)/n! + sum from 0 to N-1 of (x^i)/i!
            res = calcTaylorExp(x, N-1) + x^N / myFactorial(N);
        end
    end

% Test function
N = 1; % initialize expansion order
err = 1; % initialize error estimate

% anonymous function to calculate error.
% Return absolute difference between exp(x) to approximation
err2 = @(N) abs(exp(2) - calcTaylorExp(2, N));

% Find expansion order such that error is lower than 0.005, using a while
% loop.
while err >= 0.005
    N = N + 1;
    err = err2(N);
end

% Print result
fprintf('Minimal order that gives err < 0.005 is: %d.\nError is: %f.\n', N, err2(N))
%% Q4
% Save N that was calculated in Q3.
clearvars -except N
for i = 1:N
    % Focus on current axis. Select grid with 2 rows.
    mySubplot(2, fix(N/2) + mod(N,2), i)
    % Supply dynamic title
    title(['approximating exp(2) with N = ' num2str(i)])
    % Supply consistant axis limits
    ylim([0 ceil(exp(2))])
    xlim([0 N])
    % Plot horizontal line at true value
    yline(exp(2),'--','exp(2)')
    hold on
    % Plot approximation intermediate calculations as stars (*) 
    for j = 1:i
        plot(j, calcTaylorExp(2, j),'*')
    end
end
end