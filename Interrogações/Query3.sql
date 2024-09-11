.mode columns
.headers on
.nullvalue NULL

SELECT CLUBE, NUMJOGADORES FROM
(SELECT Clube.nome as CLUBE, count(idJogador) as NUMJOGADORES
FROM Clube, Equipa, Jogador
WHERE Clube.idClube = Equipa.idClube and Equipa.idEquipa = Jogador.idEquipa
GROUP BY Clube.idClube
ORDER BY NUMJOGADORES DESC, CLUBE.nome 
LIMIT 4)
ORDER BY NUMJOGADORES, CLUBE
LIMIT 1

