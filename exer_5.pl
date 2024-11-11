come(urso, peixe).
come(peixe, peixinho).
come(peixinho, alga).
come(peixe, alga).
come(urso, raposa).
come(veado, grama).
come(peixe, minhoca).
come(urso, guaxinim).
come(raposa, coelho).
come(urso, veado).
come(lince, veado).
come(planta_carnivora, mosca).
come(veado, planta_carnivora).
animal(urso).
animal(peixe).
animal(raposa).
animal(veado).
animal(minhoca).
animal(lince).
animal(coelho).
animal(guaxinim).
animal(mosca).
animal(peixinho).
planta(grama).
planta(alga).
planta(planta_carnivora).

% Perguntas
% carnivoro come animal?
% herbívoro come planta e não come animal?
% predador é carnívoro e também é animal?
% presa é quem é comido por predador e também é animal?
% caçado é quem é presa?
% X pertence a cadeia alimentar de Y?

% carnivoro come animal?
carnivoro(X) :- come(X, Y), animal(Y).

%?- carnivoro(urso).
% true.

% herbívoro come planta e não come animal?
herbivoro(X) :- come(X, Y), planta(Y), not(animal(Y)).
%?- herbivoro(veado).
% true.

% ?- herbivoro(urso). 
% false.

% predador é carnívoro e também é animal?
predador(X):- carnivoro(X), animal(X).
%?- predador(urso).
% true.

% presa é quem é comido por predador e também é animal?
presa(X) :- come(Y, X), predador(Y), animal(X).
%?- presa(veado).
% true.

% caçado é quem é presa?
cacado(X) :- presa(X).
%?- cacado(peixinho).
% true.

% X pertence a cadeia alimentar de Y?
cadeia(X, Y) :- come(X, Y).
%?- cadeia(urso, veado).
% true.
