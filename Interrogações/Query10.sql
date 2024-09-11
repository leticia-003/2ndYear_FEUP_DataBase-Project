.mode columns
.headers on
.nullvalue NULL

WITH NUMTOTALJOGADORES AS (
  SELECT count(Jogador.idJogador) AS SOMA
  FROM Jogador
), NUMTOTALCLUBES AS (
  SELECT count(Clube.idClube) AS NUMOBS
  FROM Clube
)
SELECT SOMA / NUMOBS AS AVERAGE
FROM NUMTOTALJOGADORES
JOIN NUMTOTALCLUBES ON 1 = 1