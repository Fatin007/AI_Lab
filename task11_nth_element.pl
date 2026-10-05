% ============================================
% Task 11: N-th Element of a List (1-based indexing)
% ============================================

nth_element(1, [H|_], H).
nth_element(N, [_|T], Elem) :-
    N > 1,
    N1 is N - 1,
    nth_element(N1, T, Elem).