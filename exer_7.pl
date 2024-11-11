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

cor_area(a,verde).
cor_area(b,azul).
cor_area(c,vermelho).
cor_area(d,amarelo).
cor_area(e,vermelho).

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

conflito_cor(X, Y) :- adjacente(X, Y), cor_area(X, C), cor_area(Y, C).
% conflito_cor(b,d).
% false.

% se b eh amarelo
% conflito_cor(b,d).
% true.
