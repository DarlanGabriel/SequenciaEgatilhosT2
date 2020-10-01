CREATE TRIGGER removeVoo AFTER
DELETE ON voo
FOR EACH ROW
DELETE pilotos p where voo.piloto = p.codigo;
DELETE cliente c where voo.codigo = 
(SELECT cv.voo 
FROM cliente_voo cv, cliente c 
WHERE c.codigo = cv.cliente);
