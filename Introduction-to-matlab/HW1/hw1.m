%%
% HW1 solution
% < Yuval Bernard & 211860754 >
%% Q1
disp('*** Question 1 ***')
% Section a
mkdir 'C:\matlab_course\HW1'
%%% Section b
% Imagine I saved the file under parent directory.
%%% Section c
disp(pwd)
%%% Section d
% Didn't work because the file is neither in the current directory,
% or in MATLAB's path.
%%% Section e
addpath('C:\matlab_course\HW1')
% Now the script runs.
%%% Section f
rmpath('C:\matlab_course\HW1')
% Doesn't run anymore.
%%% Section g
cd 'C:\matlab_course\HW1'
% Now the script runs.
disp('  ')
%% Q2
disp('*** Question 2 ***')
%%% section a
distace = 4; % (m)
%%% section b
time = 2; % (s)
%%% section c
speed = distace / time; % (m/s)
%%% section d
fprintf('The speed is: %d (m/s)', speed)
%%% section e
% time is a double.
%%% section f
disp(who)
%%% section g
save('save_distance.mat',"distace",'-mat')
%%% section h
clear distace
%%% section i
fprintf('There are now %d variables in workspace.',length(who))
% There are now only two variables: time and speed
%%% section j
load("save_distance.mat")
fprintf('There are now %d variables in workspace.',length(who))
%%% section k
clear
fprintf('There are now %d variables in workspace.',length(who))
% Variable environment empty.
%%% section l
time=3; distance =0;
fprintf('There are now %d variables in workspace.',length(who))
% There are two environment variables.
%%% section m
% Re-runing the script reassigns @distance and @time to their initial values.
% Value of @speed should change if it is calculated after changing the
% values of @distance and @time.
%%% section n
% Calculation using undeclared variables is impossible.
%%% section o
% using 'clear' at the begining of the script makes sure that all variables
% are cleared (duh). This way, there can't be a case where variables from a previous
% working session are used in current calculations unintentionally.

% Example case:
% >> x = -3;
% %% script start
% clear
% % Check that workspace is empty.
% if ~isempty(whos) error('Workspace is not empty'); end

% Explanation:
% If we wouldn't clear the workspace before running the script,
% An error would have been thrown.
disp('  ')
%% Question 3
%%% section b
% this code multiplies two numbers and displays the result:
num1="10";
num2="2";
num2= 2;
disp(['If we multiply ', num1, ' and ', num2, ' we get: ', num2str(num1*num2)]);
% There was a runtime error.
%%% section c
% A code with warnings runs but isn't optimized.
% A code with syntax errors won't run.
num1="10";
num2= 2;
disp(['If we multiply ', num1, ' and ', num2, ' we get: ', num2str(num1*num2)]);
%%% section d
% Can't multply a string with a double (or integer).
% Correct code:
num1 = 10;
num2 = 2;
disp(['If we multiply ', num2str(num1), ' and ', num2str(num2), ' we get: ', num2str(num1 * num2)]);
%%% section f
% A code with a syntax error won't run.
% A code with a runtime error runs until a logical error is encountered.
% A runtime error may be detected or prevented with duck-bugging.
% MATLAB automatically highlights syntax errors.