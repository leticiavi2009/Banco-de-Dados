create table cliente
(idcliente integer not null,
nomecliente varchar(40) not null)

drop table cliente

select * from cliente

--criação de tabela com chave primária
create table itemconsumo
(iditem integer not null,
 nomeitem varchar(15) not null,
 precounit real not null,
 categoria char(6) not null,
 descricao varchar(100) null,
 primary key (iditem)
)
--outra forma de implementar a chave primária simples
create table itemconsumo
(iditem integer not null primary key,
 nomeitem varchar(15) not null,
 precounit real not null,
 categoria char(6) not null,
 descricao varchar(100) null
)

create table telcliente
(idcliente integer not null,
 telefone varchar(15) not null,
 primary key (idcliente, telefone),
 foreign key (idcliente) references cliente(idcliente)
)

--comando totalmente errado de criação de chave primária composta
create table telcliente
(idcliente integer not null primary key,
 telefone varchar(15) not null primary key
 )

--comando alter
alter table cliente add primary key (idcliente)

create table mesa
(idmesa integer not null  primary key)

create table pedido
(idpedido integer not null primary key,
 dtpedido date not null,
 situacao varchar(10),
 motivocancel varchar(100) null,
 idcli integer not null,
 idmesa integer not null,
 foreign key (idcli) references cliente (idcliente),
 foreign key (idmesa) references mesa (idmesa))
										 
 
 
 
 
)



