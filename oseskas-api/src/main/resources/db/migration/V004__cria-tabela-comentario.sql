CREATE TABLE comentarios (
	id serial NOT NULL,
	ordem_servico_id bigint NOT NULL,
	descricao varchar NOT NULL,
	data_envio date,
	PRIMARY KEY (id)
);

ALTER TABLE comentarios ADD CONSTRAINT fk_comentarios_ordem_servico
FOREIGN KEY (ordem_servico_id) REFERENCES ordem_servico (id)