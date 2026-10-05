% ============================================
% Task 10: Find All Siblings (using findall/3)
% ============================================

% Sample parent facts
parent(alice, bob).
parent(alice, carol).
parent(david, emma).
parent(david, frank).

siblings_of(X, Siblings) :-
    parent(P, X),
    findall(Y, (parent(P, Y), Y \= X), Siblings).