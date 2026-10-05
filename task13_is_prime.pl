% ============================================
% Task 13: Check Prime Number
% ============================================

is_prime(2).
is_prime(N) :-
    N > 2,
    N mod 2 =\= 0,
    \+ has_factor(N, 3).

% Check if N has an odd divisor D starting from 3
has_factor(N, D) :-
    D * D =< N,
    (   N mod D =:= 0
    ;   D2 is D + 2,
        has_factor(N, D2)
    ).