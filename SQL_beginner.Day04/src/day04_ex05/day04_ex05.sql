CREATE VIEW v_price_with_discount as 
with p_order as (SELECT *
                FROM person_order po inner join person p ON p.id = po.person_id
                                inner join menu m  ON po.menu_id = m.id)
SELECT p_order.name as name ,
        p_order.pizza_name as pizza_name,
        p_order.price as price,
        round(p_order.price - p_order.price * 0.1) as discount_price --we can use func in select
FROM p_order 
ORDER BY p_order.name, p_order.pizza_name;


-- DROP VIEW v_price_with_discount;

