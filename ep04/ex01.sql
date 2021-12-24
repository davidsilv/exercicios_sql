-- qual valor total de receita gerada por clientes de cada estado?
--considere a base completa, com apenas pedidos entregues.


select t2.customer_state as UF, 
        round( sum(t3.price) / count(distinct t1.customer_id), 2) as avg_receita_cliente, 
        round( sum(t3.price), 2) as receita_total_estado 
from tb_orders as t1

left join tb_customers as t2
on t1.customer_id = t2.customer_id

left join tb_order_items as t3
on t1.order_id = t3.order_id

where t1.order_status = 'delivered'

group by t2.customer_state