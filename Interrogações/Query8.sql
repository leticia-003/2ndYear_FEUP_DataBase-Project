.mode columns
.headers on
.nullvalue NULL

WITH NUMJOG_APOS AS (
  SELECT count(Jogador.idJogador) AS NUMJOGAPOS
  FROM Jogador
  WHERE Jogador.dataNascimento > '1995-12-31'
),NUMJOG_TOTAL AS (
	SELECT count (Jogador.idJogador) AS NUMJOGTOTAL
	FROM Jogador
)

SELECT NUMJOGAPOS * 100/NUMJOGTOTAL AS PERCENTAGE_OF_PLAYERS_BORN_AFTER_1995
FROM NUMJOG_APOS
JOIN NUMJOG_TOTAL 
ON 1 = 1