function res = calcTailorExp(x, N)
% error handling
if N ~= fix(N) || N < 0
    error('N must be a positive integer.')
end
% base case
if N == 0
    res = 1;
else
    % recursive step
    res = calcTailorExp(x, N-1) + x^N / myFactorial(N);
end
end