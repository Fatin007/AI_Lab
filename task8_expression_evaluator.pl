eval(add(X, Y), R) :- eval(X, X1), eval(Y, Y1), R is X1 + Y1.
eval(sub(X, Y), R) :- eval(X, X1), eval(Y, Y1), R is X1 - Y1.
eval(mul(X, Y), R) :- eval(X, X1), eval(Y, Y1), R is X1 * Y1.
eval(div(X, Y), R) :- eval(X, X1), eval(Y, Y1), Y1 =\= 0, R is X1 / Y1.
eval(N, N) :- number(N).