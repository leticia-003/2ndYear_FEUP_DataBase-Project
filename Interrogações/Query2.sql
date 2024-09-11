.mode columns
.headers on
.nullvalue NULL

SELECT count(idJogador)
FROM Jogador, Equipa
WHERE Jogador.idEquipa = Equipa.idEquipa and Equipa.nome = "Benfica"