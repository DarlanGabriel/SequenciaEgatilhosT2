CREATE TRIGGER numeroVoo AFTER
INSERT ON voo
FOR EACH ROW
EXECUTE PROCEDURE numeroVoo
UPDATE pilotos p
set num_voos = num_voos + 1
where voo.piloto = p.codigo;
