
soma([], 0).
soma([H|T], S) :-
    soma(T, ST),
    S is H + ST.

%?- soma([13,22], S).
% S = 35.