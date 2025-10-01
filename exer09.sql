create database dbBanco;

use dbBanco;

create table tbhistorico (
foreign key (Cpf) references tbcliente(Cpf),
foreign key (NumConta) references tbconta(NumConta),
DataInicio date
);

create table tbconta (
NumConta int primary key,
Saldo decimal (7,2),
TipoConta smallint,
foreign key (NumAgencia) references tbagencia(NumAgencia)
);

create table tbagencia (
foreign key (CodBanco) references tbbanco(Codigo) ,
NumAgencia int primary key,
Endereco varchar (50) not null
);

create table tbcliente (
Cpf bigint primary key,
Nome varchar (50) not null,
Sexo char (1) not null,
Endereco varchar (50) not null	
);

create table tbtelefone_cliente (
foreign key (Cpf) references tbcliente(Cpf),
telefone int primary key
);

create table tbbanco (
Codigo int primary key,
Nome varchar (50) not null
);

