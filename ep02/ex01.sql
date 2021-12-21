-- Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

SELECT product_category_name,
    min(product_description_lenght) as tam_min_descricao,
    max(product_description_lenght) as tam_max_descricao,
    avg(product_description_lenght) as tam_medio_descricao

FROM tb_products

WHERE product_category_name IS NOT NULL 

GROUP BY product_category_name