% ============================================
% Task 9: Count Occurrences of an Element
% ============================================

count_elem([], _, 0).
count_elem([E|T], E, C) :-
    count_elem(T, E, C1),
    C is C1 + 1.
count_elem([H|T], E, C) :-
    H \= E,
    count_elem(T, E, C).