select  dt_nascimento,
              to_char(dt_nascimento, 'dd')dia_nascimento,
              to_char(dt_nascimento, 'd')dia_semana_nascimento,
              to_char(dt_nascimento, 'day')dia_semana_extenso_nascimento,
              to_number(to_char(dt_nascimento, 'mm'))mes_nascimento,
              to_char(dt_nascimento, 'MON')mes_extenso_nascimento, 
              to_char(dt_nascimento, 'yyyy')ano_nascimento
from pessoa_fisica
--
select  qt_altura,
             trim(to_char(qt_altura,'90D99'))qt_altura2,
             trim(to_char(0.9,'90D99')) qt_altura3
from pessoa_fisica
--
select  nr_cpf,
             lpad(nr_cpf,11,'0')nr_cpf2,
             rpad(nr_cpf,11,'0')nr_cpf3          
from pessoa_fisica

