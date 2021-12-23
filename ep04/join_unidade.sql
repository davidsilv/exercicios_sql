-- em unidades e em pedidos?

select t2.product_category_name, count(distinct t1.order_id) as qtde_pedidos 
from tb_order_items as t1

left join tb_products as t2

on t1.product_id = t2.product_id

group by t2.product_category_name
order by count(distinct t1.order_id) desc 