-- Query the Equipa table to check the value of the numeroCampeonatos column
SELECT * FROM Equipa WHERE nome = 'Team A';
-- Insert a new row into the ResultadoCampeonato table
INSERT INTO ResultadoCampeonato (equipaApuradaLigaCampeoes, equipaDespromovida1, equipaDespromovida2, idFinal, equipaVencedora)
VALUES ('Team A', 'Team B', 'Team C', 1, 'Team A');

-- Query the Equipa table to check the value of the numeroCampeonatos column
SELECT * FROM Equipa WHERE nome = 'Team A';

-- Query the Equipa table to check the value of the numeroCampeonatos column
SELECT * FROM Equipa WHERE nome = 'Team A';
-- Delete the row from the ResultadoCampeonato table
DELETE FROM ResultadoCampeonato WHERE equipaVencedora = 'Team A';

-- Query the Equipa table to check the value of the numeroCampeonatos column
SELECT * FROM Equipa WHERE nome = 'Team A';