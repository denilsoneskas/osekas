CREATE TABLE ordem_servico (
	id serial NOT NULL,
	cliente_id bigint NOT NULL,
	descricao varchar NOT NULL,
	preco numeric(10,2) NOT NULL,
	status varchar NOT NULL,
	data_abertura date NOT NULL,
	data_finalizacao date,
	PRIMARY KEY (id)
);

ALTER TABLE ordem_servico ADD CONSTRAINT fk_ordem_servico_cliente
FOREIGN KEY (cliente_id) REFERENCES cliente (id)