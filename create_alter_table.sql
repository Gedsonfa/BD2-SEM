create table pessoa_fisica(nr_sequencia integer, dt_criacao date, dt_alteracao date, nm_pessoa_fisica varchar2(255),
dt_nascimento date, nr_cpf varchar2(11), qt_altura number(3,2))

create table uf(nr_sequencia integer, dt_criacao date, dt_alteracao date, cd_uf_ibge number(2), sg_uf varchar2(2),
ds_uf varchar2(255));

create table municipio(nr_sequencia integer, dt_criacao date, dt_alteracao date, cd_municipio_ibge number(7), ds_municipio varchar2(255));

create table pessoa_fisica_endereco(nr_sequencia integer, dt_criacao date, dt_alteracao date, nr_seq_pessoa_fisica integer, nr_seq_uf integer, nr_seq_municipio integer, ds_logradouro varchar(255), nr_endereco integer, ds_bairro varchar2(255), nr_cpf number(8));

SELECT * FROM  pessoa_fisica 

INSERT INTO pessoa_fisica (NR_SEQUENCIA,NM_PESSOA_FISICA, qt_altura)values(1,'Gedson', 1.59)

alter table pessoa_fisica add (teste number(10));
alter table pessoa_fisica modify(teste number(5,3));
alter table pessoa_fisica rename column teste to teste_novo;
alter table pessoa_fisica rename column teste_novo to teste;
alter table pessoa_fisica rename to pessoa_fisica_alterado;
alter table pessoa_fisica_alterado rename to pessoa_fisica;
alter table pessoa_fisica drop column teste;