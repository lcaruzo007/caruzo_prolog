amiga(priscila, fernanda).
amiga(fernanda, priscila).
amiga(fernanda, cris).
amigo(lucio, carla).
amigo(lucio, ana).
gosta(maria, joana).
gosta(maria, lucia).
ama(paula, joao).
ama(joao, paula).
ama(paulo, cris).
ama(cris, paulo).
ama(cris, andre).

namorados(X, Y) :- ama(X, Y), ama(Y, X).
amiga_intima(X, Y) :- amiga(X, Y), amiga(Y, X).

% Perguntas
% amigo(lucio, X)
% X = carla ;
% X = ana ;

% ama(cris, X).
% X = paulo ;
% X = andre ;

% namorados(X, Y).
% X = paula,
% Y = joao ;

% amiga(fernanda, X).
% X = priscila ;

% amiga_intima(X, Y).
% X = priscila,
% Y = fernanda ;


% gosta(maria, X).
% X = joana ;