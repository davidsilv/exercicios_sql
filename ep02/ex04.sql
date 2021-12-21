-- Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100. Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres.


SELECT product_category_name,
    min(product_name_lenght) as tam_min,
    max(product_name_lenght) as tam_max,
    avg(product_name_lenght) as tam_medio

FROM tb_products

WHERE product_description_lenght >= 100

GROUP BY product_category_name

HAVING avg(product_description_lenght) > 500

ORDER BY 3 ASC, 4 DESC