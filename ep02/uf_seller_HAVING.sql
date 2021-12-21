select seller_state,
    count(*) as qtde_sellers

from tb_sellers

where seller_state IN ('SP', 'RJ')

group by seller_state 

having count(*) > 10
