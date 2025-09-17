create database Irany;
use Irany;

create table tbproduto (
    idprop int primary key,
    nomeprod varchar(50) not null,
    qtd int,
    datavalidade date not null,
    preco decimal(4,2) not null
);

alter table tbproduto add peso decimal(4,2) null;
alter table tbproduto add cor varchar(50) null;
alter table tbproduto add marca varchar(50) not null;
alter table tbproduto drop column cor;
alter table tbproduto modify peso decimal(4,2) not null;
alter table tbproduto drop column datavalidade;