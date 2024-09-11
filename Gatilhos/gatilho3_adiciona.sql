CREATE TRIGGER update_player_with_most_goals_on_insert
AFTER INSERT ON Golo
FOR EACH ROW
BEGIN
  UPDATE Jogo
  SET jogadorMaisGolos = (SELECT idJogador
                         FROM Golo
                         WHERE idJogo = NEW.idJogo
                         GROUP BY idJogador
                         ORDER BY COUNT(idJogador) DESC
                         LIMIT 1)
  WHERE idJogo = NEW.idJogo;
END;