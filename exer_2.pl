joga(carlos, basquete).
joga(andre, futebol).
joga(rodrigo,basquete).
luta(luiz,karatê).
luta(fernando, kungFu).
luta(mario, karatê).
jogador(andre).
jogador(carlos).
jogador(joao).
lutador(mario).
lutador(fernando).

vencedor(mario).
vencedor(andre).
vencedor(carlos).
doping(rodrigo).
doping(carlos).
campeao(X,Y):-vencedor(X), joga(X,Y).
campeao(X,Y):-vencedor(X), luta(X,Y).
desclassificado(X,Y):-doping(X), campeao(X,Y).

% Perguntas

% luta(fernando,Y).
% Y = kungFu.

% luta(X,karatê).
% false.

% joga(X,futebol).
% X = andre.

% campeao(X,futebol).
% X = andre.

% campeao(mario, X).
% X = karatê.

% desclassificado(X,Y).
% X = carlos,
% Y = basquete