-- EX01 - Quantos produtos possui a categoria 'artes'?

/*
select count(*) as qtde_itens from tb_products
where product_category_name = 'artes'
*/


select count(*) as qtde_itens,
       count(product_id) as qtde_products,
       count(distinct product_id) as qtde_produtos_distintos,
       count(DISTINCT product_category_name) as qtde_categorias_distintas
from tb_products
where product_category_name = 'artes'
