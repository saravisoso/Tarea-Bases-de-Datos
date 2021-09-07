-- TAREA 
-- 1. Qué contactos de proveedores tienen la posición de sales representative?
select * from suppliers s where s.contact_title= 'Sales Representative';

-- 2. Qué contactos de proveedores no son marketing managers?
select * from suppliers s where not s.contact_title = 'Marketing Manager';

-- 3. Cuales órdenes no vienen de clientes en Estados Unidos?
select * from orders o where not o.ship_country='USA';

-- 4. Qué productos de los que transportamos son quesos?
select * from products p where category_id= (select c2.category_id from categories c2 where 
c2.category_name='Dairy Products');
 
-- 5. Qué ordenes van a Bélgica o Francia?
select * from orders o where (o.ship_country='Belgium' or  o.ship_country='France');

-- 6. Qué órdenes van a LATAM?
select * from orders o where o.ship_region='LATAM';

-- 7. Qué órdenes no van a LATAM?
select * from orders o where not o.ship_region='LATAM';

-- 9. Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro
select e.first_name, e.last_name from employees e 

-- 10. Cuánta lana tenemos en inventario?
select sum((od.unit_price*od.quantity)-od.discount) as lana from order_details od 


-- 11. Cuantos clientes tenemos de cada país?
select c.country, count(*) as clientes from customers c group by c.country 