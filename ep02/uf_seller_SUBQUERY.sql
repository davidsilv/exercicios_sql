SELECT * 
FROM (
    SELECT seller_state,
        count(*) as qtde_sellers
    FROM tb_sellers
    group by seller_state
)
WHERE qtde_sellers > 20