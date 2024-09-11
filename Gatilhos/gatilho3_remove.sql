CREATE TRIGGER update_player_with_most_goals_on_delete
AFTER DELETE ON Golo
FOR EACH ROW
BEGIN
  UPDATE Jogo
  SET jogadorMaisGolos = (SELECT idJogador
                         FROM Golo
                         WHERE idJogo = OLD.idJogo
                         GROUP BY idJogador
                         ORDER BY COUNT(idGolo) DESC
                         LIMIT 1)
  WHERE idJogo = OLD.idJogo AND jogadorMaisGolos = OLD.idJogador;
END;