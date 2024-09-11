CREATE TRIGGER update_campeonatosGanhos_on_delete
AFTER DELETE ON ResultadoCampeonato
FOR EACH ROW
BEGIN
    UPDATE Equipa
    SET campeonatosGanhos = campeonatosGanhos - 1
    WHERE nome = OLD.equipaVencedora;
END;