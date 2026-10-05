% ============================================
% Task 2: Sum of Even Numbers in a List
% ============================================

sum_even([], 0).
sum_even([H|T], Sum) :-
    H mod 2 =:= 0,
    sum_even(T, RestSum),
    Sum is H + RestSum.
sum_even([H|T], Sum) :-
    H mod 2 =\= 0,
    sum_even(T, Sum).