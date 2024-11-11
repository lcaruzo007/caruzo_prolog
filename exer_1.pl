
% Pais
progenitor(conceicao, lucas).
progenitor(luiz, lucas).

% Gatos
progenitor(lucas, potassio).
progenitor(lucas, perla).

% Avós
progenitor(benedito, luiz).
progenitor(maria_sebastiana, luiz).
progenitor(jose_miguel, conceicao).
progenitor(maria_aparecida, conceicao).
progenitor(conceicao, perla).
progenitor(conceicao, potassio).

% Tios
progenitor(jose_miguel, luiza).
progenitor(maria_aparecida, luiza).
progenitor(jose_miguel, maria_helena).
progenitor(maria_aparecida, maria_helena).
progenitor(jose_miguel, julinda).
progenitor(maria_aparecida, julinda).
progenitor(jose_miguel, lucia).
progenitor(maria_aparecida, lucia).
progenitor(jose_miguel, dirce).
progenitor(maria_aparecida, dirce).
progenitor(jose_miguel, osvaldo).
progenitor(maria_aparecida, osvaldo).
progenitor(jose_miguel, claudineia).
progenitor(maria_aparecida, claudineia).
progenitor(jose_miguel, maria).
progenitor(maria_aparecida, maria).
progenitor(jose_miguel, marcia).
progenitor(maria_aparecida, marcia).
progenitor(jose_miguel, carmen).
progenitor(maria_aparecida, carmen).
progenitor(benedito, eliana).
progenitor(maria_sebastiana, eliana).
progenitor(benedito, adriano).
progenitor(maria_sebastiana, adriano).

% Primos
progenitor(claudia, luiza).  
progenitor(carla, luiza).    
progenitor(maria_helena, marcela). 
progenitor(maria_helena, joao_paulo). 
progenitor(maria_helena, matheus).
progenitor(paulo, marcela). 
progenitor(paulo, joao_paulo). 
progenitor(paulo, matheus).
progenitor(julinda, aline).
progenitor(julinda, saulo).
progenitor(julinda, alessandra).
progenitor(tonho, aline).
progenitor(tonho, saulo).
progenitor(tonho, alessandra).
progenitor(lucia, nicole).
progenitor(lucia, camila).
progenitor(lucia, nathalia).
progenitor(claudio, nicole).
progenitor(claudio, camila).
progenitor(claudio, nathalia).
progenitor(dirce, tiago).
progenitor(ademir, tiago).
progenitor(osvaldo, otavio).
progenitor(osvaldo, alice).
progenitor(thais, otavio).
progenitor(thais, alice).
progenitor(claudineia, gabriel).
progenitor(claudineia, felipe).
progenitor(lauro, gabriel).
progenitor(lauro, felipe).
progenitor(maria, renata).
progenitor(maria, fernanda).
progenitor(odalho, renata).
progenitor(odalho, fernanda).
progenitor(marcia, sabrina).
progenitor(marcia, vinicius).
progenitor(valmir, sabrina).
progenitor(valmir, vinicius).
progenitor(carmen, amanda).
progenitor(carmen, vitoria).
progenitor(edson, amanda).
progenitor(edson, vitoria).
progenitor(eliana, ana_maria).
progenitor(eliana, lara). 
progenitor(rogerio, ana_maria).
progenitor(rogerio, lara). 
progenitor(adriano, vitor).
progenitor(renata, vitor).

% Definindo gênero
feminino(conceicao).
feminino(maria_sebastiana).
feminino(maria_aparecida).
feminino(luiza).
feminino(maria_helena).
feminino(julinda).
feminino(lucia).
feminino(dirce).
feminino(claudineia).
feminino(maria).
feminino(marcia).
feminino(carmen).
feminino(claudia).
feminino(carla).
feminino(marcela).
feminino(alice).
feminino(aline).
feminino(nicole).
feminino(camila).
feminino(nathalia).
feminino(renata).
feminino(fernanda).
feminino(sabrina).
feminino(amanda).
feminino(vitoria).
feminino(eliana).
feminino(ana_maria).
feminino(lara).
feminimo(thais).
feminimo(renata).
feminimo(perla).
masculino(lucas).
masculino(luiz).
masculino(benedito).
masculino(jose_miguel).
masculino(osvaldo).
masculino(tiago).
masculino(saulo).
masculino(matheus).
masculino(joao_paulo).
masculino(gabriel).
masculino(felipe).
masculino(vinicius).
masculino(otavio).
masculino(vitor).
masculino(adriano). 
masculino(rogerio).
masculino(valmir).
masculino(edson).
masculino(lauro).
masculino(claudio).
masculino(tonho).
masculino(paulo).
masculino(odalho).
masculino(potassio).


% Regras
mae(X, Y) :- progenitor(X, Y), feminino(X).
pai(X, Y) :- progenitor(X, Y), masculino(X).
irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y), X \= Y.
avo(X, Y) :- progenitor(X, Z), progenitor(Z, Y), masculino(X).
avoh(X, Y) :- progenitor(X, Z), progenitor(Z, Y), feminino(X).
tio(X,Y) :- progenitor(Z,Y), progenitor(W,Z), progenitor(W,X), X \= W.
primo(X,Y) :- progenitor(Z,X), progenitor(W,Y), progenitor(V,Z), progenitor(V,W), X \= Y.

% Consultas

% Quem é pai de Potassio e perla?
% pai(X, potassio).
% X = lucas.
% pai(X, perla).
% X = lucas.
 
% Quem é mae de Lucas?
% mae(X, lucas).
% X = conceicao.

% Quem é avo paterno de Lucas?
% avo(X, lucas).
X = benedito 

% Quem é avoh de Lara?
% avoh(X, lara).
% X = maria_sebastiana.

% Dirce é tia de Gabriel?
% tio(dirce, gabriel).
% true


% Gabriel é primo de camila?
% primo(gabriel, camila).
% true


% Eliana é irmã de Adriano?
% irmao(eliana, adriano).
% true

% Maria é avó de Vitor?
% avo(maria, vitor).
% false

% Carmen é irmã de Amanda?
% irmao(carmen, amanda).
% false

% Maria é tia de Sabrina?
% tio(julinda, sabrina).
% true

% Cluadio eh pai de Nathalia?
% pai(claudio, nathalia).
% true

% Adriano eh irmao de osvaldo?
% irmao(adriano, osvaldo).
% false