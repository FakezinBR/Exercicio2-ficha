create database exer2
drop database exer2

create table tbl_Funcionario(
       fun_numero int primary key auto_increment,
       fun_salario float,
       fun_telefone int
);

create table tbl_Departamento(
       depa_numero int primary key auto_increment,
       depa_setor varchar(255)
);

create table tbl_Deposito(
       depo_numero int primary key auto_increment,
       depo_endereco varchar(255)
);

create table tbl_Pecas(
       pec_numero int primary key auto_increment,
       pec_peso float,
       pec_cor varchar(255)
);

create table tbl_Projeto(
       pro_numero int primary key auto_increment,
       pro_orcamento float,
       pro_data date
);

create table tbl_Fornecedor(
       for_numero int primary key auto_increment,
       for_endereco varchar(255)
);

create table tbl_Controle(
       con_numero int primary key auto_increment,
       con_material varchar(255)
);

create table tbl_data(
       dat_numero int primary key auto_increment,
       dat_inicio date,
       dat_horatrabalho date
);

alter table tbl_Departamento
add column fun_numero int,
add constraint fk_fun_numero foreign key (fun_numero) references tbl_Funcionario (fun_numero);

alter table tbl_Projeto
add column fun_numero int,
add constraint fk_fun_numero2 foreign key (fun_numero) references tbl_Funcionario (fun_numero);

alter table tbl_Projeto
add column for_numero int,
add constraint fk_for_numero3 foreign key (for_numero) references tbl_Fornecedor (for_numero);

alter table tbl_Projeto
add column pec_numero int,
add constraint fk_pec_numero foreign key (pec_numero) references tbl_Pecas (pec_numero);

alter table tbl_Projeto
add column dat_numero int,
add constraint fk_dat_numero foreign key (dat_numero) references tbl_data (dat_numero);

alter table tbl_Pecas
add column for_numero int,
add constraint fk_for_numero foreign key (for_numero) references tbl_Fornecedor (for_numero);

alter table tbl_Deposito
add column pec_numero int,
add constraint fk_pec_numero4 foreign key (pec_numero) references tbl_Pecas (pec_numero);

alter table tbl_Controle
add column pro_numero int,
add constraint fk_pro_numero foreign key (pro_numero) references tbl_Projeto (pro_numero);

alter table tbl_Controle
add column for_numero int,
add constraint fk_for_numero5 foreign key (for_numero) references tbl_Fornecedor (for_numero);
