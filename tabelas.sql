create table cliente (
	id_conta integer primary key,
	endereco character varying(60),
	nome character varying(30) not null,
	telefone character(14)
);

create table cliente_fisico (
	id_conta integer not null,
	cpf character(9) not null,	
	unique(cpf),			--> Chave Secundaria
	foreign key (id_conta) references cliente(id_conta) on delete cascade on update cascade
);

create table cliente_juridico (
	id_conta integer not null,
	cnpj character(9) not null,
	unique(cnpj), 			--> Chave Secundaria
	foreign key (id_conta) references cliente(id_conta) on delete cascade on update cascade
);

create table conta_poupanca (
	num_conta integer not null,
	saldo numeric(10,2),
	data_cadastro date,
	taxa_juros numeric(10,2),
	id_conta integer not null,
	primary key (num_conta),
	foreign key (id_conta) references cliente(id_conta) on delete cascade on update cascade
);

create table conta_corrente (
	num_conta integer not null,
	saldo numeric(10,2),
	data_cadastro date,
	id_conta integer not null,
	primary key (num_conta),
	foreign key (id_conta) references cliente(id_conta) on delete cascade on update cascade
);

create table operação (
	codigo_operação integer primary key,
	valor numeric(10,2),
	data_operação date,
	tipo_operação character (3) not null
	/*	saq ou dep	*/
);

create table realiza_operação (
	codigo_operação integer not null references operação(codigo_operação) on delete cascade on update cascade,
	id_conta integer not null references cliente(id_conta) on delete cascade on update cascade,
    primary key (codigo_operação, id_conta)
); 

create table funcionario (
	nome character varying(30) not null,
	cpf character(9) not null,
	salario numeric(10,2),
	primary key (cpf)
);

create table atendente (
	cpf character(9) not null,
	comissão numeric(10,2),
	foreign key (cpf) references funcionario(cpf) on delete cascade on update cascade
);

create table gerente (
	cpf character(9) not null,
	bonificação numeric(10,2),
	foreign key (cpf) references funcionario(cpf) on delete cascade on update cascade
);

create table consultor_investimento (
	cpf character(9) not null,
	comissão numeric(10,2),
	foreign key (cpf) references funcionario(cpf) on delete cascade on update cascade
);

create table serviço (
	codigo_serviço integer not null,
    data_serviço date not null,
	primary key (codigo_serviço)
);

create table seguros (
	codigo_serviço integer not null,
    valor_seguro numeric(10,2),
	foreign key (codigo_serviço) references serviço(codigo_serviço) on delete cascade on update cascade
);

create table emprestimo (
	codigo_serviço integer not null,
    valor_emprestimo numeric(10,2),
	foreign key (codigo_serviço) references serviço(codigo_serviço) on delete cascade on update cascade
);

create table proposta_de_investimento (
	codigo_investimento integer not null,
    data_investimento date not null,
    valor_investido numeric(10,2),
	rendimento numeric(10,2),
	primary key (codigo_investimento)
);

create table analise_seguros (
	cpf character(9) not null references funcionario(cpf) on delete cascade on update cascade,
	id_conta integer not null references cliente(id_conta) on delete cascade on update cascade,
	codigo_serviço integer not null references serviço(codigo_serviço) on delete cascade on update cascade,
	data_analise date not null,
	primary key (cpf, id_conta, codigo_serviço, data_analise)
);

create table analise_credito (
	cpf character(9) not null references funcionario(cpf) on delete cascade on update cascade,
	id_conta integer not null references cliente(id_conta) on delete cascade on update cascade,
	codigo_serviço integer not null references serviço(codigo_serviço) on delete cascade on update cascade,
	data_analise date not null,
	primary key (cpf, id_conta, codigo_serviço, data_analise)
);

create table analise_investimento (
	cpf character(9) not null references funcionario(cpf) on delete cascade on update cascade,
	id_conta integer not null references cliente(id_conta) on delete cascade on update cascade,
	codigo_investimento integer not null references proposta_de_investimento(codigo_investimento) on delete cascade on update cascade,
	primary key(cpf, id_conta, codigo_investimento)
);

create table agencia (
	num_agencia integer primary key,
	endereco character varying(60),
	telefone character(14)
);

create table trabalha_em (
	num_agencia integer not null references agencia(num_agencia) on delete cascade on update cascade,
	cpf character(9) not null references funcionario(cpf) on delete cascade on update cascade,
	primary key(cpf, num_agencia)
); 

create table presta_serviço (
	num_agencia integer not null references agencia(num_agencia) on delete cascade on update cascade,
	codigo_serviço integer not null references serviço(codigo_serviço) on delete cascade on update cascade,
	primary key(num_agencia, codigo_serviço)
);

create table func_telefone (
	telefone character(14),
	cpf character(9) not null references funcionario(cpf) on delete cascade on update cascade,
	primary key(telefone,cpf)
);