% Definição dos países com nome, área e população
pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 400).
pais(india, 3, 450).

% 1. Diferença de população entre China e Índia
% Consulta: pais(china, _, Popchina), pais(india, _, Popindia), Dif is Popchina - Popindia.
% Resultado esperado: Popchina = 1800, Popindia = 450, Dif = 1350.

% 2. Comparação de área entre Brasil e EUA
% Consulta: pais(brasil, Arbrasil, _), pais(eua, Areua, _), Arbrasil == Areua.
% Resultado esperado: Arbrasil = 9, Areua = 9.

% 3. Comparação de população entre EUA e Índia
% Consulta: pais(eua, _, Popeua), pais(india, _, Popindia), Popeua > Popindia.
% Resultado esperado: false (pois Popeua = 400, Popindia = 450).
