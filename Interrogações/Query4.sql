.mode columns
.headers on
.nullvalue NULL

SELECT NUMJORNADA FROM
(SELECT Jornada.numero as NUMJORNADA, count(Golo.idGolo) AS GOLOS
FROM Jornada
INNER JOIN Jogo
ON Jornada.idJornada = Jogo.idJornada
INNER JOIN Golo
ON Jogo.idJogo = Golo.idJogo
GROUP BY Jornada.idJornada
ORDER BY GOLOS DESC
LIMIT 1)