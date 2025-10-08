create database dbBanco;

use dbBanco;

create table tbbanco (
Codigo int primary key,
Nome varchar (50) not null
);

create table tbagencia (
CodBanco int,
foreign key (CodBanco) references tbbanco(Codigo) ,
NumAgencia int primary key,
Endereco varchar (50) not null
);

create table tbconta (
NumAgencia int,
NumConta int primary key,
Saldo decimal (7,2),
TipoConta smallint,
foreign key (NumAgencia) references tbagencia(NumAgencia)
);

create table tbcliente (
Cpf bigint primary key,
Nome varchar (50) not null,
Sexo char (1) not null,
Endereco varchar (50) not null	
);

create table tbhistorico (
Cpf bigint,
NumConta int,
foreign key (Cpf) references tbcliente(Cpf),
foreign key (NumConta) references tbconta(NumConta),
DataInicio date
);



create table tbtelefone_cliente (
Cpf bigint,
foreign key (Cpf) references tbcliente(Cpf),
telefone int primary key
);


insert into tbbanco 
values (1, 'Banco do Brasil'),
	   (104, 'Caixa Economica Federal'),
       (801, 'Banco Escola');
       
insert into tbagencia
values (1, 123, 'Av Paulista,78'),
	   (104, 159, 'Rua liberdade,124'),
       (801, 401, 'Rua vinte três,23'),
       (801, 485, 'Av Marechal,68');

insert into tbcliente
values (12345678910, 'Enildo', 'M', 'Rua Grande,75'),
	   (12345678911, 'Astrogildo', 'M', 'Rua Pequena, 789'),
       (12345678912, 'Monica', 'F', 'Av Larga,148'),
       (12345678913, 'Cascão', 'M', 'Av Principal,369');
       
insert into tbconta
values (9876, 456.05, 1, 123),
	   (9877, 321.00, 1, 123),
       (9878, 100.00, 2, 485),
       (9879, 5589.48, 1, 401);

insert into tbhistorico
values (12345678910, 9876, '2001-04-15'),
	   (12345678910, 9877, '2011-03-10'),
       (12345678910, 9878, '2021-03-11'),
       (12345678910, 9879, '2000-07-05');

insert into tbconta
values (12345678910, 912345678),
	   (12345678911, 912345679),
       (12345678912, 912345680),
       (12345678913, 912345681);
       

