.mode columns
.headers on
.nullvalue NULL

SELECT Jogador.nome
FROM Jogador, Equipa, Clube
WHERE Jogador.idEquipa = Equipa.idEquipa AND Equipa.idClube = Clube.idClube AND Jogador.nome LIKE "%Maria%" AND Clube.cidade = "Lisboa"
ORDER BY Jogador.nome, Jogador.dataNascimento