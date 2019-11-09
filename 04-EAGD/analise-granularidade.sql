/* análise de granularidade */
/****************************/
select 'locacao', count(*) from locacao
union all
select 'loja', count(*) from loja
union all
select 'vendedor', count(*) from vendedor
