-- Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria

SELECT product_category_name,
    min(product_name_lenght) as tam_min_nomeobjeto,
    max(product_name_lenght) as tam_max_nomeobjeto,
    avg(product_name_lenght) as tam_medio_nomeobjeto

FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

LIMIT 5