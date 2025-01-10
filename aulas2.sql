-- exemplo numero 1 procurar email
-- listar os e-mails dos clientes da tabela.customers

select email
from sales.customers

-- exemplo 2 seleção de mais de uma coluna de uma tabela
-- liste os email e nomes dos clientes da tabela sales.customers

select email,first_name,last_name
from sales.customers


-- ex 3 seleção de todas as colunas de uma tabela
--liste todos as informações dos clientes da tabela sales.customers
-- o comando ´´´*´´´ serve para selecionar todas as tabelas de uma coluna

select *
from sales.customers


-- ex 1 seleção de uma coluna sem DISTINCT

select brand
from sales.products --333

-- exemplo 2 seleção de marcas distintas

select distinct brand
from sales.products

-- ex 3 seleção de mais de uma coluna com distinct
-- liste as marcas e anos de modelos distintos que constam na tabela produtos

select distinct brand,model_year, price
from sales.products

-- comando where
-- serve para filtrar as linhas da tabela com uma condição

--1 liste os emails dos clientes da nossa base que moram no estado de santa catarina

select email, state
from sales.customers
where state = 'SC' 
-- aspas simples servem para pesquisar mensagens com textos

select distinct state 
from sales.customers

--ex 2 liste os email dos clientes da nossa base que moram no estado de santa catarina
--ou mato grosso do sul

select email, state
from sales.customers
where state ='SC' or state = 'MS' -- OR serve como se fosse E 

--ex 3 filtro de condição com data
-- liste os e-mails dos clientes da nossa base que moram no estado de santa catarina
--ou mato grosso do sul e que tem mais de 30 anos

select email, state, birth_date
from sales.customers
where (state ='SC' or state = 'MS') and birth_date < '1995-12-31'


-- se eu for colocar uma condição na mesma busca, deixo elas entre parenteses "where (state ='SC' or state = 'MS')"
-- comando and serve para adicionar o metodo na condição da busca


select birth_date
from sales.customers
