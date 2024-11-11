area(a).
area(b).
area(c).
area(d).
area(e).

adjacente(a, b).
adjacente(a, c).
adjacente(a, d).
adjacente(b, e).
adjacente(b, d).
adjacente(d, e).
adjacente(c, d).
adjacente(c, b).

% Queries

% adjacencia entre a e d
%?- adjacente(a, d).
% true.

% adjacencia entre a & e
%?- adjacente(a, e).
% false.

% regioes adjacentes a C
%?- adjacente(c, Y).
% Y = a ;
% Y = d ;
% Y = b.