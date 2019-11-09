/* análise de granularidade */
/****************************/
select 'locacao', count(*) from locacao
union all
select 'loja', count(*) from loja
union all
select 'vendedor', count(*) from vendedor

/* Extrai Ano e Mês */
-- date(datalocacao) as locacao_data,
select  
to_number(to_char(datalocacao, 'YYYY'), '9999') as locacao_ano, 
to_number(to_char(datalocacao, 'MM'), '99') as locacao_hora,
sum(valor) as total,
count(valor) as qtde_valor
from locacao
group by locacao_ano, locacao_hora
order by locacao_ano, locacao_hora

select exercicio,
  sum(orcamento_inicial)::money as total_orc_inicial,
  sum(orcamento_atualizado)::money as total_orc_atualizado,
  sum(orcamento_realizado)::money as total_orc_realizado
from orcamento_despesa
group by exercicio
order by exercicio

delete
from orcamento_despesa
where exercicio in (2016, 2017, 2018)


