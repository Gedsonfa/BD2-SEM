-----------------------------
----- UF -----
alter table uf add constraint nr_seq_uf_pk primary key (nr_sequencia);
alter table uf add constraint sg_uf_un unique (sg_uf);
alter table uf add constraint cd_uf_ibge_un unique (cd_uf_ibge);
alter table uf modify(sg_uf not null, cd_uf_ibge not null);
drop table uf;

create table uf(nr_sequencia integer constraint nr_seq_uf_pk primary key, dt_criacao date, dt_alteracao date, cd_uf_ibge number(2)not null constraint cd_uf_ibge_un unique , sg_uf varchar2(2)not null constraint sg_uf_un unique,
ds_uf varchar2(255));
----------------

----- MUNICIPIO -----
alter table municipio add constraint nr_seq_municipio_pk primary key(nr_sequencia);
alter table municipio add constraint cd_municipio_ibge_un  unique(cd_municipio_ibge);
alter table municipio modify (cd_municipio_ibge not null);
drop table municipio;

create table municipio(nr_sequencia integer constraint nr_seq_municipio_pk primary key, dt_criacao date, dt_alteracao date, cd_municipio_ibge number(7) not null constraint cd_municipio_ibge_un unique, ds_municipio varchar2(255));
----- -------------------- -----

----- PESSOA_FISICA -----
alter table pessoa_fisica add constraint nr_seq_pf_pk primary key(nr_sequencia);
alter table pessoa_fisica add constraint pessoa_fisica_cpf_un  unique(nr_cpf);
drop table pessoa_fisica;

create table pessoa_fisica(nr_sequencia integer constraint nr_seq_pf_pk primary key, dt_criacao date, dt_alteracao date, nm_pessoa_fisica varchar2(255), dt_nascimento date,  nr_cpf varchar2(11) constraint pessoa_fisica_cpf_un unique,  qt_altura number(3,2));
----- -------------------- -----

----- PESSOA_FISICA_ENDERECO -----
alter table pessoa_fisica_endereco add constraint nr_seq_end_pf_pk primary key(nr_sequencia);
alter table pessoa_fisica_endereco add constraint nr_seq_pf_end_fk foreign key(nr_seq_pessoa_fisica) references pessoa_fisica(nr_sequencia);
alter table pessoa_fisica_endereco add constraint nr_seq_uf_end_fk foreign key(nr_seq_uf) references uf(nr_sequencia);
alter table pessoa_fisica_endereco add constraint nr_seq_municipio_end_fk foreign key(nr_seq_municipio) references municipio(nr_sequencia);
alter table pessoa_fisica_endereco modify (nr_seq_pessoa_fisica not null);
drop table pessoa_fisica_endereco;

create table pessoa_fisica_endereco(nr_sequencia integer constraint nr_seq_end_pf_pk primary key, dt_criacao date, dt_alteracao date, 
nr_seq_pessoa_fisica integer not null, constraint nr_seq_pf_end_fk foreign key(nr_seq_pessoa_fisica) references  pessoa_fisica(nr_sequencia), 
nr_seq_uf integer, constraint nr_seq_pf_uf_fk  foreign key(nr_seq_uf)references  uf(nr_sequencia), 
nr_seq_municipio integer, constraint nr_seq_pf_municipio_fk foreign key(nr_seq_municipio)references  municipio(nr_sequencia),
ds_logradouro varchar(255), nr_endereco integer, ds_bairro varchar2(255), nr_cep number(8));

--------------
create table teste(a1 varchar2(2), b1 number);
alter table teste add constraint a1_ck check(a1 in('X','A','B','C'));
alter table teste add constraint b1_ck check(b1 between 1 and 10);
insert into teste (a1) values('X');
insert into teste (b1) values(-100);

DESAFIO
ADICIONAR UMA COLUNA CHAMADA SEXO DO TIPO VARCHAR2(1) NA TABELA PESSOA_FISICA
CRIAR UMA CONSTRAINT SEXO_CK RECEBER APENAS AS LETRAS (F M I) 