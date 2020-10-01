CREATE TABLE cliente(
	codigo int primary key,
	nome varchar(127),
	endereco varchar(127)
);

CREATE TABLE piloto(
	codigo int primary key,
	nome varchar(127),
	num_voos int
);

CREATE TABLE voo(
	codigo int primary key,
	tipo varchar(127),
	piloto int,
	num_passageiros int,
	distancia float
);

CREATE TABLE milhas(
	cliente int primary key,
	milhas float
);

CREATE TABLE cliente_voo(
	cliente int,
	voo int,
	classe varchar(15),
	primary key(cliente, voo)
);

ALTER TABLE voo
ADD FOREIGN KEY (piloto) REFERENCES piloto(codigo);

ALTER TABLE milhas
ADD FOREIGN KEY (cliente) REFERENCES cliente(codigo);

ALTER TABLE cliente_voo
ADD FOREIGN KEY (cliente) REFERENCES cliente(codigo);

ALTER TABLE cliente_voo
ADD FOREIGN KEY (voo) REFERENCES voo(codigo);
