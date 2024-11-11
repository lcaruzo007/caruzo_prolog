% Retorna o ultimo elemento da lista.
ultimo([U], U). 
ultimo([_|T], U) :- ultimo(T, U). 

% ?- ultimo([13,17,15,22], U).
% U = 22