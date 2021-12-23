-- media de quantidade de item?

select t2.product_category_name, round(count(*) / cast(count(distinct t1.order_id) as float), 2) as avg_item_pedido 
from tb_order_items as t1
left join tb_products as t2

on t1.product_id = t2.product_id

group by t2.product_category_name
order by count(*) / cast(count(distinct t1.order_id) as float) desc 