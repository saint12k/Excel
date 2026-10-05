-- Create the products table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    rating DECIMAL(3,1),
    is_available BOOLEAN DEFAULT TRUE,
    release_date DATE NOT NULL,
    description TEXT
);

-- Insert 60 sample products
INSERT INTO products (name, category, price, stock_quantity, rating, is_available, release_date, description) VALUES
-- Electronics
('Smartphone X', 'Electronics', 899.99, 45, 4.7, TRUE, '2023-09-15', 'Latest flagship smartphone with advanced camera'),
('Wireless Earbuds', 'Electronics', 129.99, 78, 4.5, TRUE, '2023-07-20', 'True wireless earbuds with noise cancellation'),
('Smart Watch Pro', 'Electronics', 249.99, 32, 4.3, TRUE, '2023-11-05', 'Health and fitness tracking smartwatch'),
('Laptop Ultra', 'Electronics', 1299.99, 15, 4.8, TRUE, '2023-08-10', 'Ultralight laptop with all-day battery life'),
('Bluetooth Speaker', 'Electronics', 79.99, 60, 4.2, TRUE, '2023-03-25', 'Portable speaker with rich bass'),
('Tablet Mini', 'Electronics', 349.99, 25, 4.4, TRUE, '2023-10-12', 'Compact tablet for entertainment and work'),
('Gaming Console', 'Electronics', 499.99, 8, 4.9, TRUE, '2023-12-01', 'Next-gen gaming with 4K support'),
('Wireless Charger', 'Electronics', 39.99, 94, 4.0, TRUE, '2023-02-14', 'Fast wireless charging pad'),
('Smart Home Hub', 'Electronics', 129.99, 37, 4.1, TRUE, '2023-05-30', 'Control all your smart devices'),
('Premium Headphones', 'Electronics', 199.99, 22, 4.6, TRUE, '2023-07-07', 'Over-ear headphones with studio quality sound'),

-- Clothing
('Cotton T-shirt', 'Clothing', 19.99, 120, 4.3, TRUE, '2023-04-10', 'Comfortable everyday t-shirt'),
('Jeans Classic', 'Clothing', 49.99, 85, 4.5, TRUE, '2023-03-15', 'Classic fit denim jeans'),
('Winter Jacket', 'Clothing', 89.99, 32, 4.7, TRUE, '2023-09-20', 'Warm insulated winter jacket'),
('Running Shoes', 'Clothing', 79.99, 45, 4.6, TRUE, '2023-06-12', 'Lightweight shoes for runners'),
('Summer Dress', 'Clothing', 39.99, 28, 4.2, TRUE, '2023-05-05', 'Flowy summer dress with floral pattern'),
('Casual Shorts', 'Clothing', 29.99, 67, 4.0, TRUE, '2023-04-22', 'Comfortable everyday shorts'),
('Premium Sweater', 'Clothing', 59.99, 42, 4.4, TRUE, '2023-08-30', 'Soft wool blend sweater'),
('Business Shirt', 'Clothing', 45.99, 53, 4.1, TRUE, '2023-07-25', 'Formal shirt for professional settings'),
('Athletic Socks', 'Clothing', 12.99, 110, 3.9, TRUE, '2023-02-10', 'Pack of 6 athletic performance socks'),
('Designer Scarf', 'Clothing', 34.99, 25, 4.3, FALSE, '2023-10-15', 'Elegant patterned scarf'),

-- Home
('Coffee Maker', 'Home', 89.99, 28, 4.5, TRUE, '2023-03-10', 'Programmable drip coffee maker'),
('Blender Pro', 'Home', 69.99, 36, 4.3, TRUE, '2023-05-20', 'High-powered blender for smoothies'),
('Toaster Deluxe', 'Home', 49.99, 42, 4.0, TRUE, '2022-11-15', 'Four-slot stainless steel toaster'),
('Bedding Set', 'Home', 79.99, 18, 4.7, TRUE, '2023-07-25', 'Luxury cotton bedding set'),
('Floor Lamp', 'Home', 59.99, 24, 4.2, TRUE, '2023-08-05', 'Modern standing lamp for living room'),
('Kitchen Knife Set', 'Home', 129.99, 15, 4.8, TRUE, '2023-09-18', 'Professional grade kitchen knife set'),
('Vacuum Cleaner', 'Home', 149.99, 12, 4.6, TRUE, '2023-04-30', 'Bagless vacuum with HEPA filter'),
('Dinner Plate Set', 'Home', 39.99, 30, 4.4, TRUE, '2023-06-12', 'Set of 6 ceramic dinner plates'),
('Premium Towels', 'Home', 29.99, 48, 4.1, TRUE, '2023-02-28', 'Soft cotton bath towels set of 4'),
('Wall Clock', 'Home', 24.99, 35, 3.9, TRUE, '2022-12-10', 'Modern design wall clock'),

-- Books
('Mystery Novel', 'Books', 14.99, 85, 4.4, TRUE, '2023-07-15', 'Bestselling mystery novel'),
('Cookbook', 'Books', 24.99, 42, 4.6, TRUE, '2023-05-22', 'Collection of gourmet recipes'),
('Science Fiction', 'Books', 12.99, 63, 4.2, TRUE, '2023-08-30', 'Award-winning sci-fi thriller'),
('Self-Help Guide', 'Books', 18.99, 55, 4.5, TRUE, '2023-03-12', 'Popular self-improvement book'),
('History Book', 'Books', 22.99, 28, 4.3, TRUE, '2023-04-05', 'Comprehensive historical account'),
('Children\ Story', 'Books', 9.99, 72, 4.7, TRUE, '2023-06-18', 'Illustrated children\a book'),
('Biography', 'Books', 19.99, 36, 4.1, TRUE, '2023-09-25', 'Biography of a famous figure'),
('Programming Guide', 'Books', 39.99, 25, 4.8, TRUE, '2023-10-10', 'Comprehensive programming reference'),
('Art Book', 'Books', 49.99, 12, 4.4, FALSE, '2023-11-05', 'Coffee table book of famous artworks'),
('Poetry Collection', 'Books', 17.99, 20, 4.0, TRUE, '2023-07-30', 'Collection of contemporary poems'),

-- Toys
('Building Blocks', 'Toys', 29.99, 45, 4.6, TRUE, '2023-05-15', 'Creative building blocks set'),
('Board Game', 'Toys', 34.99, 32, 4.7, TRUE, '2023-08-22', 'Family-friendly strategy board game'),
('Action Figure', 'Toys', 19.99, 60, 4.3, TRUE, '2023-07-10', 'Collectible action figure'),
('Puzzle Set', 'Toys', 14.99, 38, 4.1, TRUE, '2023-04-18', '1000-piece jigsaw puzzle'),
('Remote Car', 'Toys', 49.99, 22, 4.5, TRUE, '2023-09-30', 'Remote controlled racing car'),
('Stuffed Animal', 'Toys', 24.99, 48, 4.8, TRUE, '2023-06-25', 'Soft plush stuffed animal'),
('Art Kit', 'Toys', 19.99, 36, 4.2, TRUE, '2023-03-20', 'Creative art supplies for kids'),
('Science Kit', 'Toys', 29.99, 25, 4.4, TRUE, '2023-10-05', 'Educational science experiments kit'),
('Doll House', 'Toys', 79.99, 10, 4.6, TRUE, '2023-11-15', 'Detailed miniature doll house'),
('Outdoor Play Set', 'Toys', 149.99, 5, 4.9, FALSE, '2023-12-01', 'Backyard play set with swings'),

-- Stationery
('Notebook Pack', 'Stationery', 12.99, 95, 4.3, TRUE, '2023-01-15', 'Set of 3 premium notebooks'),
('Fountain Pen', 'Stationery', 24.99, 42, 4.7, TRUE, '2023-02-20', 'Elegant writing fountain pen'),
('Desk Organizer', 'Stationery', 19.99, 38, 4.2, TRUE, '2023-03-10', 'Multi-compartment desk organizer'),
('Premium Journal', 'Stationery', 29.99, 25, 4.5, TRUE, '2023-05-05', 'Leather-bound writing journal'),
('Colored Pencils', 'Stationery', 15.99, 60, 4.4, TRUE, '2023-06-12', 'Set of 24 artist quality colored pencils'),
('Sticky Notes', 'Stationery', 7.99, 110, 4.0, TRUE, '2023-04-22', 'Assorted sizes and colors sticky notes'),
('Desk Lamp', 'Stationery', 34.99, 28, 4.3, TRUE, '2023-07-30', 'Adjustable LED desk lamp'),
('Filing Cabinet', 'Stationery', 129.99, 12, 4.6, TRUE, '2023-08-15', 'Two-drawer metal filing cabinet'),
('Planner', 'Stationery', 18.99, 45, 4.5, TRUE, '2023-09-22', 'Annual daily planner and organizer'),
('Premium Stapler', 'Stationery', 16.99, 35, 4.1, TRUE, '2023-01-30', 'Heavy duty desktop stapler');

 
SELECT * 
FROM products;

-- 3. Select only the name, price, and category columns from the products table
SELECT name, price, category 
FROM products;

-- 4. Find all products with a price greater than $50
SELECT * 
FROM products 
WHERE price > 50;

-- 5. Find all products in the Electronics category
SELECT * 
FROM products 
WHERE category = 'Electronics';

-- 6. Find all products that have a rating of 4.5 or higher
SELECT * 
FROM products 
WHERE rating >= 4.5;

-- 7. Find all products in the Clothing category AND with a price less than $30
SELECT * 
FROM products 
WHERE category = 'Clothing' AND price < 30;

-- 8. Find all products in the Home category OR with a stock quantity greater than 100
SELECT * 
FROM products 
WHERE category = 'Home' OR stock_quantity > 100;

-- 9. Find all products that are available AND NOT in the Toys category
SELECT * 
FROM products 
WHERE is_available = TRUE AND category <> 'Toys';

-- 10. Find all products with a price between $20 and $100
SELECT * 
FROM products 
WHERE price BETWEEN 20 AND 100;

-- 11. List all products sorted by price in ascending order
SELECT * 
FROM products 
ORDER BY price ASC;

-- 12. List all products sorted by name alphabetically
SELECT * 
FROM products 
ORDER BY name ASC;

-- 13. List all products sorted by rating in descending order, then by price in ascending order when ratings are equal
SELECT * 
FROM products 
ORDER BY rating DESC, price ASC;

-- 14. List the 5 most expensive products
SELECT * 
FROM products 
ORDER BY price DESC 
LIMIT 5;

-- 15. List the 10 products with the highest stock quantity
SELECT * 
FROM products 
ORDER BY stock_quantity DESC 
LIMIT 10;

-- 16. Display products sorted alphabetically by name, showing results 6–10
SELECT * 
FROM products 
ORDER BY name ASC 
LIMIT 5 OFFSET 5;

-- 17. Find all products whose name contains the word Premium
SELECT * 
FROM products 
WHERE name LIKE 'Premium';

-- 18. Find all products whose name starts with the letter S
SELECT * 
FROM products 
WHERE name LIKE 'S';

-- 19. Find all products whose name ends with er
SELECT * 
FROM products 
WHERE name LIKE 'er';

-- 20. Find all products whose description contains the word with
SELECT * 
FROM products 
WHERE description LIKE 'with';

-- 21. Find all products whose category contains on (case-insensitive)
SELECT * 
FROM products 
WHERE category ILIKE '%on%';

-- 22. Find all products whose name is exactly 5 characters long
SELECT * 
FROM products 
WHERE LENGTH(name) = 5;

-- 23. Find all products released in 2023
SELECT * 
FROM products 
WHERE EXTRACT(YEAR FROM release_date) = 2023;

-- 24. Find all products that have no rating
SELECT * 
FROM products 
WHERE rating IS NULL;

-- 25. Find the 3 most recently released products that are still available
SELECT * 
FROM products 
WHERE is_available = TRUE 
ORDER BY release_date DESC 
LIMIT 3;

-- 26. Find all products in either the Books or Stationery category with a price less than $25
SELECT * 
FROM products 
WHERE category IN ('Books', 'Stationery') AND price < 25;

-- 27. Display product names alongside their lengths
SELECT name, LENGTH(name) AS name_length 
FROM products;

-- 28. Display all product names in uppercase
SELECT UPPER(name) AS uppercase_name 
FROM products;

-- 29. Extract the first 10 characters of each product description
SELECT SUBSTRING(description FROM 1 FOR 10) AS short_description 
FROM products;

-- 30. Replace Premium with Luxury in all product names
SELECT REPLACE(name, 'Premium', 'Luxury') AS updated_name 
FROM products;

-- 31. Concatenate the product name and category with a hyphen in between
SELECT name  ' - '  category AS name_with_category 
FROM products;

-- 32. Round all product prices to the nearest integer
SELECT ROUND(price) AS rounded_price 
FROM products;

-- 33. Calculate the sale price of each product after a 15% discount
SELECT price, ROUND(price * 0.85, 2) AS discounted_price 
FROM products;

-- 34. Display the day of the week (name) when each product was released
SELECT release_date, TO_CHAR(release_date, 'Day') AS release_day_of_week 
FROM products;

-- 35. Find all products released in the current month, regardless of year
SELECT * 
FROM products 
WHERE EXTRACT(MONTH FROM release_date) = EXTRACT(MONTH FROM CURRENT_DATE);

-- 36. Calculate how many days each product has been in inventory since its release date
SELECT name, CURRENT_DATE - release_date AS days_in_inventory 
FROM products;

-- 37. Find the average price of all products
SELECT AVG(price) AS average_price 
FROM products;

-- 38. Find the total stock quantity of all products
SELECT SUM(stock_quantity) AS total_stock 
FROM products;

-- 39. Find the highest and lowest product ratings
SELECT MAX(rating) AS highest_rating, MIN(rating) AS lowest_rating 
FROM products;

-- 40. Count the total number of products available for sale
SELECT COUNT(*) AS total_available_products 
FROM products 
WHERE is_available = TRUE;

-- 41. Find the average price, minimum price, maximum price, and total number of products in a single result
SELECT 
    AVG(price) AS avg_price, 
    MIN(price) AS min_price, 
    MAX(price) AS max_price, 
    COUNT(*) AS total_products 
FROM products;