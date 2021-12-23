SELECT DISTINCT
CASE WHEN product_category_name IS NULL THEN 'outros'
    ELSE product_category_name end as categoria_filha

FROM tb_products

ORDER BY 1
