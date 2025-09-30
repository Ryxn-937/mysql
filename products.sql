
CREATE TABLE products (
    id INT PRIMARY KEY,
    p_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    in_stock VARCHAR(3) CHECK (in_stock IN ('Yes', 'No'))
);

INSERT INTO products (id, name, category, price, in_stock) VALUES
(1, 'Wireless Mouse', 'Electronics', 450, 'Yes'),
(2, 'Bluetooth Headphones', 'Electronics', 1200, 'Yes'),
(3, 'Office Chair', 'Furniture', 4999, 'No'),
(4, 'Notebook', 'Stationery', 50, 'Yes'),
(5, 'Pen Pack', 'Stationery', 120, 'Yes'),
(6, 'Smartphone', 'Electronics', 15000, 'No'),
(7, 'Water Bottle', 'Kitchen', 300, 'Yes'),
(8, 'Microwave Oven', 'Appliances', 8000, 'Yes'),
(9, 'Table Lamp', 'Furniture', 700, 'No'),
(10, 'Backpack', 'Accessories', 999, 'Yes');


SELECT DISTINCT category
FROM products;


SELECT *
FROM products
WHERE in_stock = 'Yes'
  AND price < 500;


SELECT *
FROM products
WHERE in_stock = 'No'
   OR price > 1000;


SELECT name, price
FROM products
ORDER BY price DESC;


SELECT 
    name,
    price * 1.18 AS price_with_tax
FROM products;




