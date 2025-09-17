-- Hudson Araujo Barreiro --
create database dbescola;
use dbescola;

create table tbcliente (
    idcli int primary key,
    nomecli varchar(50) not null,
    numend smallint,
    datacadastro datetime default current_timestamp
);

alter table tbcliente add cpf decimal(11,0) not null unique;
alter table tbcliente add cep decimal(5,0);

create database dbempresa;
use dbescola;

create table tbendereco (
    cep decimal(5,0) primary key,
    logradouro varchar(250) not null,
    iduf tinyint
);

alter table tbcliente add constraint fk_cep_tbcliente foreign key (cep) references tbendereco(cep);

describe tbcliente;

show databases;
drop database dbempresa; 

-- 8 --

use dbescola;

create table tbest (
    iduf tinyint primary key,
    nomeufs char(2) not null,
    nomeestado varchar(40) not null
);

alter table tbendereco 
    add constraint fk_iduf_tbendereco 
    foreign key (iduf) references tbest(iduf);

alter table tbest drop column nomeestado;

rename table tbest to tbestado;

alter table tbestado rename column nomeufs to nomeuf;

alter table tbendereco add idcid mediumint;

create table tbcidade (
    idcid mediumint primary key,
    nomecidade varchar(50) not null
);

alter table tbcidade modify nomecidade varchar(250) not null;

alter table tbendereco 
add constraint fk_idcid_tbendereco 
foreign key (idcid) references tbcidade(idcid);