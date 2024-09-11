CREATE TRIGGER delete_numero_golos
AFTER DELETE ON Golo
FOR EACH ROW
BEGIN
    UPDATE Jogador
    SET numeroGolos = numeroGolos - 1
    WHERE idJogador = OLD.idJogador;
END;