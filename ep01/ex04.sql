-- quantos produtos 'beleza e saude' tem menos de 1 litro?

SELECT count(*) FROM tb_products
WHERE product_category_name = 'beleza_saude' and product_length_cm * product_height_cm * product_width_cm / 1000 < 1