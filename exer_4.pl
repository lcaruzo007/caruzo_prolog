nasceu(ana, brasil).
nasceu(yves, franca).
idioma(brasil, portugues).
idioma(franca, frances).
idioma(inglaterra, ingles).
estudou(ana, frances).
estudou(ana, ingles).
estudou(yves, ingles).
fala(A,C) :- nasceu(A,B), idioma(B,C).
fala(A,C) :- estudou(A,C).


% Perguntas
% fala(ana, portugues).
% true

% fala(ana, X).
% X = portugues ;

% fala(yves, ingles).
% true

% Quem fala frances?
% fala(X, frances).
% X = yves ;
