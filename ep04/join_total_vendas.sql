-- e o total de vendas?

select t2.product_category_name, count(*) as total_itens_vendidos from tb_order_items as t1

left join tb_products as t2

on t1.product_id = t2.product_id

group by t2.product_category_name
order by count(*) desc 