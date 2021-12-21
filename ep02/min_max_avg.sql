SELECT product_category_name,
       count(*) as qtde_produtos,
       min(product_weight_g) as menor_valor,
       max(product_weight_g) as maior_valor,
       avg(product_weight_g) as media
FROM tb_products
where product_category_name is not NULL
group by product_category_name