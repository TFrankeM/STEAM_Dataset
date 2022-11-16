/* Código que cria um nonclustered index para a tabela Aquisição */

create nonclustered index ID_boladão on Aquisição (DataAquisição);

select count(*) as transações, dataaquisição from aquisição
where dataaquisição between '2018-01-01' and '2021-12-31'
group by dataaquisição
order by dataaquisição desc;
