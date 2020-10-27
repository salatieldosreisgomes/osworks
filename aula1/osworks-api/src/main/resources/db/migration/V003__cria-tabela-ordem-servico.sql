create table ordem_servico(
	id bigserial not null primary key,
	cliente_id bigint not null,
	descricao text not null,
	preco decimal(10,2) not null,
	status varchar(20) not null,
	data_abertura timestamp not null,
	data_finalizacao timestamp 
);

alter table ordem_servico add constraint fk_ordem_servico_cliente
foreign key (cliente_id) references cliente (id); 