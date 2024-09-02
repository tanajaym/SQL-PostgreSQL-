SELECT p.name as name,
        m.pizza_name as pizza_name,
        m.price as price,
        m.price - (m.price*pd.discount/100) as discount_price,
        pz.name as pizzeria_name
FROM person_order po inner join menu m on po.menu_id = m.id
            inner join person p on po.person_id = p.id 
            inner join pizzeria pz on m.pizzeria_id = pz.id
            inner join person_discounts pd on (m.pizzeria_id = pd.pizzeria_id and p.id = pd.person_id)
ORDER by p.name, m.pizza_name;

