--SQ_Projeto2_Filmes

select * from alugueis;
select * from atores;
select * from atuacoes;
select * from clientes;
select * from filmes;


select avg(preco_aluguel) from filmes; -- 2.209718309859155

select genero, avg(preco_aluguel) from filmes;

select genero, 
avg(preco_aluguel) as preco_medio,
count(*) as qtd_filmes
from filmes
group by genero;

select genero, 
round((preco_aluguel), 2) as preco_medio,
count(*) as qtd_filmes
from filmes
group by genero
order by genero;

select genero, 
round((preco_aluguel), 2) as preco_medio,
count(*) as qtd_filmes
from filmes
where ano_lancamento = 2011
group by genero;

select avg(nota) from alugueis;   -- 7.93

select * from alugueis
where nota >= (select avg(nota) from alugueis); -- subquery

select * from clientes;

-- create view para guardar a tabela (tabela view chamada resultado)
create view resultado as 
select genero, 
round((preco_aluguel), 2) as preco_medio,
count(*) as qtd_filmes
from filmes
group by genero;

select * from resultado;

