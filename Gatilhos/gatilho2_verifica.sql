-- Insert a new row into the Golo table
INSERT INTO Golo (idGolo, minuto, idJogo, idJogador)
VALUES (6003, 1, 5001, 1212);

-- Query the Jogador table to check the value of the numeroGolos column
SELECT * FROM Jogador WHERE idJogador = 1;


-- Delete the row from the Golo table
DELETE FROM Golo WHERE idJogador = 1212;

-- Query the Jogador table to check the value of the numeroGolos column
SELECT * FROM Jogador WHERE idJogador = 1;
