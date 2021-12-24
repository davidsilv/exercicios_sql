-- qual valor total de receita gerada por sellers de cada estado?
--considere a base completa, com apenas pedidos entregues.


select t1.seller_state as UF, 
        round( sum(t2.price), 2) as receita_total, 
        round( sum(t2.price) / count(distinct t2.seller_id), 2) as avg_receita_seller, 
        count(distinct t2.seller_id) as qtde_sellers 
        
from tb_sellers as t1

left join tb_order_items as t2
on t1.seller_id = t2.seller_id

left join tb_orders as t3
on t2.order_id = t3.order_id

where t3.order_status = 'delivered'

group by t1.seller_state