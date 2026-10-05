parent(john, mary).
parent(john, tom).
parent(mary, ann).
parent(mary, peter).
parent(tom, lisa).
parent(peter, kate).

% ancestor(X, Y): X is an ancestor of Y
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% descendant(X, Y): X is a descendant of Y
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Z, X), descendant(Z, Y).