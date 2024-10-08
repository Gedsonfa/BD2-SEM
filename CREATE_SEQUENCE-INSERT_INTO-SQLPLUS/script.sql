------------------------------- SOLUÇÃO DO DESAFIO --------------------------------------
alter table pessoa_fisica add(sexo varchar2(1));
alter table pessoa_fisica add constraint pf_sexo_ck check(sexo in('M', 'F', 'I'));
---------------------------------------------------------------------------------------------------

create sequence pessoa_fisica_seq
    start with 1
    increment by 1
    maxvalue 9999999
    minvalue 1
    nocache;

create sequence uf_seq
    start with 1
    increment by 1
    maxvalue 9999999
    minvalue 1
    nocache;

create sequence municipio_seq
    start with 1
    increment by 1
    maxvalue 9999999
    minvalue 1
    nocache;
    
-- EXEMPLO 1
insert into uf(nr_sequencia, dt_criacao, cd_uf_ibge, sg_uf, ds_uf) 
values(uf_seq.nextval, sysdate, 12, 'SC', 'Santa Catarina' );

-- EXEMPLO 2
insert into uf(nr_sequencia, dt_criacao, cd_uf_ibge, sg_uf, ds_uf) 
select uf_seq.nextval, sysdate, 15, 'AP', 'TESTE'
from dual;

delete uf;

--EXECUTAR SCRIPT DE UF (arquivo uf.txt)

alter table municipio add (cd_uf_ibge number(2));
alter table municipio add constraint municipio_uf_ibge_fk foreign key(cd_uf_ibge)references uf(cd_uf_ibge);

--EXECUTAR SCRIPT DE MUNICIPIO (arquivo municipio.txt)