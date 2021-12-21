/*select product_category_name,
        product_photos_qty

from tb_products

where (product_category_name = 'bebes'
or product_category_name = 'perfumaria') 
and product_photos_qty > 5
*/

select t1.product_category_name, t1.product_photos_qty

from tb_products as t1

where (t1.product_category_name = 'bebes' and t1.product_photos_qty > 6)
or (t1.product_category_name = 'perfumaria' and t1.product_photos_qty > 5)