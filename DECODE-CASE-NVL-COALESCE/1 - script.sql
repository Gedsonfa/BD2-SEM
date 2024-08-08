--Exemplo DECODE
select  nr_sequencia,
             nm_pessoa_fisica,
             dt_nascimento,    
             sexo,
             decode(sexo,'M','Masculino','F','Feminino','Não Informado')ds_sexo 
from pessoa_fisica a;



--Exemplo CASE
select  nr_sequencia,
             nm_pessoa_fisica,
             dt_nascimento,    
             sexo,
             to_number(to_char(sysdate,'yyyy')) - to_number(to_char(dt_nascimento,'yyyy')) qt_idade,
             case when to_number(to_char(sysdate,'yyyy')) - to_number(to_char(dt_nascimento,'yyyy')) between 1 and 60 and sexo = 'M' then 'Jovem Homem' 
                      when to_number(to_char(sysdate,'yyyy')) - to_number(to_char(dt_nascimento,'yyyy')) between 1 and 60 and sexo = 'F' then 'Jovem Mulher' 
                       when to_number(to_char(sysdate,'yyyy')) - to_number(to_char(dt_nascimento,'yyyy')) between 61 and 999 then 'Idoso'
                       else 'Não Informado'
             end ds_faixa_etaria
from pessoa_fisica a;



--Exemplo NVL
select  nr_sequencia,
             nm_pessoa_fisica,
             dt_nascimento,    
             sexo,
             nvl(sexo, 'Não Informado')ds_sexo
from pessoa_fisica a;




--Exemplo COALESCE
select  nr_sequencia,
             nm_pessoa_fisica,
             dt_nascimento,    
             sexo,
             qt_altura,
             coalesce(sexo, to_char(qt_altura), nm_pessoa_fisica, 'Não Informado')ds_sexo
from pessoa_fisica a