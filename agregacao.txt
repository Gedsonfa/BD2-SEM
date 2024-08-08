update pessoa_fisica set qt_altura = trunc(dbms_random.value(1.2, 2.2),2);
commit;




select count(*)qt,
            decode(sexo,'M','Masculino','F','Feminino','Não Informado') sexo
from pessoa_fisica
group by decode(sexo,'M','Masculino','F','Feminino','Não Informado')
--

select max(qt_altura)qt,
            decode(sexo,'M','Masculino','F','Feminino','Não Informado') sexo
from pessoa_fisica
group by decode(sexo,'M','Masculino','F','Feminino','Não Informado')
--

select min(qt_altura)qt,
            decode(sexo,'M','Masculino','F','Feminino','Não Informado') sexo
from pessoa_fisica
group by decode(sexo,'M','Masculino','F','Feminino','Não Informado')
--
select sum(qt_altura)qt,
            decode(sexo,'M','Masculino','F','Feminino','Não Informado') sexo
from pessoa_fisica
group by decode(sexo,'M','Masculino','F','Feminino','Não Informado')
--

select trunc(avg(qt_altura),2)qt,
            decode(sexo,'M','Masculino','F','Feminino','Não Informado') sexo
from pessoa_fisica
group by decode(sexo,'M','Masculino','F','Feminino','Não Informado')


