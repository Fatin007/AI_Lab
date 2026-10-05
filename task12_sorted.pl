% ============================================
% Task 12: Check if List is Sorted (Ascending)
% ============================================

sorted([]).
sorted([_]).
sorted([H1, H2|T]) :-
    H1 =< H2,
    sorted([H2|T]).