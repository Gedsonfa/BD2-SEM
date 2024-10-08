select  pf.nr_sequencia,
             pf.nm_pessoa_fisica,
             pf.dt_nascimento,
             m.ds_municipio,
             uf.ds_uf    
from pessoa_fisica pf
join pessoa_fisica_endereco pfe on(pf.nr_sequencia = pfe.nr_seq_pessoa_fisica)
join municipio m on(m.nr_sequencia = pfe.nr_seq_municipio)
join uf on(uf.nr_sequencia = pfe.nr_seq_uf);
--
select  pf.nr_sequencia,
             pf.nm_pessoa_fisica,
             pf.dt_nascimento,
             m.ds_municipio,
             uf.ds_uf    
from pessoa_fisica pf,
           pessoa_fisica_endereco pfe,
           municipio m,
           uf  
where pf.nr_sequencia = pfe.nr_seq_pessoa_fisica 
and m.nr_sequencia = pfe.nr_seq_municipio
and uf.nr_sequencia = pfe.nr_seq_uf;


/*--------------------*/


select  pf.nr_sequencia,
             pf.nm_pessoa_fisica,
             pf.dt_nascimento,
             m.ds_municipio,
             uf.ds_uf    
from pessoa_fisica pf
left join pessoa_fisica_endereco pfe on(pf.nr_sequencia = pfe.nr_seq_pessoa_fisica)
left join municipio m on(m.nr_sequencia = pfe.nr_seq_municipio)
left join uf on(uf.nr_sequencia = pfe.nr_seq_uf);
--
select  pf.nr_sequencia,
             pf.nm_pessoa_fisica,
             pf.dt_nascimento,
             m.ds_municipio,
             uf.ds_uf    
from pessoa_fisica pf,
           pessoa_fisica_endereco pfe,
           municipio m,
           uf  
where pf.nr_sequencia = pfe.nr_seq_pessoa_fisica(+)
and  pfe.nr_seq_municipio = m.nr_sequencia(+)
and pfe.nr_seq_uf = uf.nr_sequencia(+);