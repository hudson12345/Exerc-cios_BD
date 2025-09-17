create database Maria;
use Maria;

create table tbvenda (
    nf int auto_increment primary key,
    datavalidade datetime not null
);

alter table tbvenda add preco decimal(4,2) not null;
alter table tbvenda add qtd smallint unsigned;
alter table tbvenda drop column datavalidade;
alter table tbvenda add datavenda datetime default current_timestamp();

create table tbproduto (
    codigob bigint(13) primary key,
    nomeprod varchar(50) not null
);

alter table tbvenda add codigob bigint(13);
alter table tbvenda add constraint fk_produto foreign key (codigob) references tbproduto(codigob);

-- 6 

alter table tbproduto add peso decimal(4,2);
alter table tbproduto add cor varchar(50);
alter table tbproduto add marca varchar(50) not null;
alter table tbproduto drop column cor;
alter table tbproduto modify peso decimal(4,2) not null;
-- não é possível excluir a coluna cor duas vezes
create database dblojagrande;
use dbdesenvolvimento;
alter table tbproduto add cor varchar(50);

create database dblojica;
use dblojica;

create table tbcliente (
	codigocli int primary key,
    nomecli varchar(50) not null,
    datacadastro date not null
);

use dblojagrande;
create table tbfuncionario (
	codigofunc int primary key,
    nomefunc varchar(50) not null,
    datacadastro datetime not null
);

drop database dblojagrande;

use dblojica;
alter table tbcliente add cpf decimal(11,0) not null unique;