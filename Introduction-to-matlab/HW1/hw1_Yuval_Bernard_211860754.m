%%
% HW1 solution
% Yuval Bernard 211860754
%% Q1
disp('*** Question 1 ***')
%%% (a)
mkdir 'C:\matlab_course\HW1'
%%% (b)
% Imagine I saved the file.
%%% (c)
% Command returned MATLAB's default path.
%%% (d)
% Didn't work because the file is neither in the current directory,
% or in MATLAB's path.
%%% (e)
addpath('C:\matlab_course\HW1')
% Now the script runs, as script file is in MATLAB's path.
%%% (f)
rmpath('C:\matlab_course\HW1')
% Script doesn't run anymore. File not in path.
%%% (g)
cd 'C:\matlab_course\HW1'
% Now the script runs. File is in current directory.
disp('  ')
%% Q2
disp('*** Question 2 ***')
%%% (a)
distace = 4; % (m)
%%% (b)
time = 2; % (s)
%%% (c)
speed = distace / time; % (m/s)
%%% (d)
fprintf('The speed is: %d (m/s)', speed)
%%% (e)
% @time is of class double.
%%% (f)
disp(who)
%%% (g)
save('save_distance.mat','distace')
%%% (i)
% There are now only two variables: @time and @speed
%%% (j)
% There are now three variables: @time, @speed, and @distance.
%%% (k)
% Workspace is empty (zero variables loaded).
%%% (l)
% There are now two variables in workspace.
%%% (m)
% Re-runing the script reassigns @distance and @time to their initial values.
% Value of @speed would change if it is calculated after changing the
% values of @distance and @time.
%%% (n)
% Calculation using undeclared variables results in a syntax error.
%%% (o)
% using 'clear' at the begining of the script makes sure that all variables
% are cleared. This way, there can't be a case where variables from a previous
% working session are used in current calculations unintentionally.

% Example case:
% >> user = momory;
% >> max_array_size = user.MaxPossibleArrayBytes / 8;
% >> x = rand(0.9 * max_array_size, 1);
% %% script start
% clear
% user = memory;
% max_array_size = user.MaxPossibleArrayBytes / 8;
% y = rand(0.2 * max_array_size, 1);
% >> error!

% Explanation
% Not using clear at script start would result in 'out of memory' error,
% because having both @x and @y in stack exceeds the amount of RAM available
% for storing arrays of class double (which are 8 bytes each).
disp('  ')
%% Question 3
disp('*** Question 3 ***')
%% (a)
% this code multiplies two numbers and displays the result:
num1="10";
num2="2";
num2= 2;
disp(['If we multiply ', ... num1, ' and ', num2, ' we
get: ', num2str(num1*num2))]);
%% (b)
num1="10";
num2="2";
num2= 2;
disp(['If we multiply ', num1, ' and ', num2, ' we get: ', num2str(num1*num2)]);
% There was a runtime error.
%% (c)
% Warning is 'Value assigned to variable might be unused'.
% A code with warnings runs but isn't optimized.
% A code with syntax errors won't run.
num1="10";
num2= 2;
disp(['If we multiply ', num1, ' and ', num2, ' we get: ', num2str(num1*num2)]);
%% (d)
% Can't multply a string with a double (or any number).
% Correct code:
num1 = 10;
num2 = 2;
disp(['If we multiply ', num2str(num1), ' and ', num2str(num2), ' we get: ', num2str(num1 * num2)]);
%% (f)
% A code with a syntax error won't run.
% A code with a runtime error runs until a logical error is encountered.
% A runtime error may be detected and prevented with debugging.
% MATLAB automatically highlights syntax errors.
disp('  ')