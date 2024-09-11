.mode columns
.headers on
.nullvalue NULL

SELECT Equipa.nome 
FROM Equipa, Jogador
Where Equipa.idEquipa = Jogador.idEquipa and Jogador.nome = "Cátia Morgado"