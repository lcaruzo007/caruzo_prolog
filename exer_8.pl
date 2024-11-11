% Definindo o somatório recursivo
somatorio(0, 0).            
somatorio(N, S) :-
    N > 0,                   
    N1 is N - 1,             
    somatorio(N1, S1),       
    S is S1 + N.             
% somatorio(9, S). 
% S = 45

% Definindo o cálculo do n-ésimo número da série de Fibonacci
    fibonacci(0, 0).
    fibonacci(1, 1).
    fibonacci(N, F) :-
        N > 1,
        N1 is N - 1,
        N2 is N - 2,
        fibonacci(N1, F1),
        fibonacci(N2, F2),
        F is F1 + F2.

% fibonacci(9, F).
% F = 34   