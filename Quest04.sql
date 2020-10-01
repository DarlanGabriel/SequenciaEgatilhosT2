CREATE TRIGGER criar_mi AFTER
INSERT ON cliente
FOR EACH ROW 
INSERT INTO milhas(cliente, milhas) values(NEW.codigo, 0);
