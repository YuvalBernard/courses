function res = myFactorial(n)
% error handling
if n ~= fix(n) || n < 0
    error('N must be a positive integer.')
end
% recursive step
if n >= 1
    res = n * myFactorial(n-1);
% base step
else
    res = 1;
end
end
