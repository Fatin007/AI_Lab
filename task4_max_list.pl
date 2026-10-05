max_list([X], X).
max_list([H|T], Max) :-
    max_list(T, MaxTail),
    Max is max(H, MaxTail).