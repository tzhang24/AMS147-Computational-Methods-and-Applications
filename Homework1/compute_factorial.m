function [b] = compute_factorial(n)sum = 1;for i = 1:n  sum = sum*i;end fprintf('%i\n', sum)end