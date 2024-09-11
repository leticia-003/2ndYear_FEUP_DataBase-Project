.mode columns
.headers on
.nullvalue NULL

SELECT Jogador.nome
FROM JOGADOR
ORDER BY Jogador.dataNascimento, Jogador.nome
LIMIT 2