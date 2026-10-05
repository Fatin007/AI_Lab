% ============================================
% Task 3: Palindrome Checker
% ============================================

palindrome([]).
palindrome([_]).
palindrome([H|T]) :-
    last_element(T, H),
    remove_last(T, Rest),
    palindrome(Rest).

% Helper: get the last element of a list
last_element([X], X).
last_element([_|T], X) :-
    last_element(T, X).

% Helper: remove the last element from a list
remove_last([_], []).
remove_last([H|T], [H|Rest]) :-
    remove_last(T, Rest).