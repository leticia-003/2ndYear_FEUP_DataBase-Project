.mode columns
.headers on
.nullvalue NULL

WITH JogadoresGroupedByGolos AS (
  SELECT Jogador.nome AS NOMEJOGADOR, count(Golo.idGolo) AS GOLOSJOGADOR
  FROM Jogador, Equipa, Golo
  WHERE Jogador.idJogador = Golo.idJogador 
  AND Jogador.idEquipa = Equipa.idEquipa
  AND Equipa.genero = 'feminino'
  GROUP BY Jogador.nome
  ORDER BY GOLOSJOGADOR DESC, Jogador.nome
)
SELECT NOMEJOGADOR
FROM JogadoresGroupedByGolos
WHERE GOLOSJOGADOR = (SELECT max(GOLOSJOGADOR) FROM JogadoresGroupedByGolos)
