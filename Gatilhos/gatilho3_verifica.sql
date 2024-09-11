-- Insert sample data into the Jogador table
INSERT INTO Jogador (idJogador, nome, dataNascimento, estado, idEquipa, numeroGolos)
VALUES (1240, 'Player 1', '2000-01-01', 'ativo', 1, 99),
       (1241, 'Player 2', '2000-01-02', 'ativo', 1, 67),
       (1242, 'Player 3', '2000-01-03', 'ativo', 2, 11);

-- Insert sample data into the Jogo table
INSERT INTO Jogo (idJogo, data, hora, resultado, idPavilhao, idJornada, idCampeonato, jogadorMaisGolos)
VALUES (5004, '2021-12-01', '16:00', "3-2", 1501, 7001, 1000, 1240);

-- Insert sample data into the Golo table
INSERT INTO Golo (idGolo, minuto, idJogo, idJogador)
VALUES (6003, 10, 1, 1),
       (6004, 20, 1, 2),
       (6005, 30, 1, 2);

-- Delete a row from the Golo table
DELETE FROM Golo
WHERE idGolo = 6004;

-- Select the row from the Jogo table
SELECT * FROM Jogo