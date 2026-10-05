% ============================================
% Task 15: Family Tree - Uncle/Aunt Relation
% ============================================

% Parent facts
parent(tom, bob).
parent(tom, alice).
parent(emily, bob).
parent(emily, alice).
parent(bob, charlie).
parent(alice, dave).
parent(john, emma).
parent(john, frank).
parent(emily, emma).
parent(emily, frank).

% Gender facts
male(tom).
male(bob).
male(charlie).
male(dave).
male(john).
male(frank).

female(alice).
female(emma).
female(emily).

% Sibling: two people sharing at least one parent
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Uncle: parent's brother
uncle(U, N) :-
    parent(P, N),
    sibling(P, U),
    male(U).

% Aunt: parent's sister
aunt(A, N) :-
    parent(P, N),
    sibling(P, A),
    female(A).