CREATE TRIGGER update_numero_golos
AFTER INSERT ON Golo
FOR EACH ROW
BEGIN
  SELECT RAISE(ABORT, 'Cannot insert a goal for a player that does not exist')
  WHERE (SELECT COUNT(*) FROM Jogador WHERE idJogador = NEW.idJogador) = 0;
  UPDATE Jogador
  SET numeroGolos = numeroGolos + 1
  WHERE idJogador = NEW.idJogador;
END;
