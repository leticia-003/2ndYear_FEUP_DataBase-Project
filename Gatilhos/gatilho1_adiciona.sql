CREATE TRIGGER update_campeonatosGanhos_on_update
AFTER INSERT ON ResultadoCampeonato
FOR EACH ROW
BEGIN
    UPDATE Equipa
    SET campeonatosGanhos = campeonatosGanhos + 1
    WHERE nome = NEW.equipaVencedora;
END;