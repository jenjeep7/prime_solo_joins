
--question 1
SELECT * FROM customers JOIN addresses ON customers.id = addresses.id;

--question2
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;

--question 3
SELECT warehouse.warehouse, products.description FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'cheetos';
--question 4
SELECT warehouse.warehouse, products.description FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'diet pepsi';

--question 5
SELECT customers.first_name, customers.last_name, count(orders.*)
FROM customers JOIN addresses ON customers.id = addresses.id
JOIN orders ON addresses.id = orders.address_id
GROUP BY customers.first_name, customers.last_name;
--Question 6
SELECT count(customers.id) FROM customers;
--question 7
SELECT count(products.id) FROM products;
--8
SELECT sum(warehouse_product.on_hand) FROM warehouse_product
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';
