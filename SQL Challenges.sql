-- Find all products that cost $1400
SELECT * FROM products
WHERE Price = 1400;	

-- Find all products that cost 11.99 or 13.99
SELECT * FROM products
WHERE Price = 11.99 or Price = 13.99;

-- Find all products that do NOT cost 11.99
SELECT * FROM products
WHERE Price != 11.99;

--  Find all products that are on sale
SELECT * FROM products
WHERE OnSale = 0;

-- Find  all products and sort them by price from greatest to least
SELECT *
FROM Products
ORDER BY Price DESC;

-- Find distinct product prices
SELECT DISTINCT prices
FROM Products;

-- Find the average price of all products
SELECT AVG(Price) 
FROM Products;

-- Find all Macbooks
SELECT * FROM products
WHERE Name = 'Macbook';

-- Find all products and sort them by price from greatest to least
SELECT * FROM Products;

-- Joins

--  Select all the computers from the products table:
SELECT products.name, categories.name FROM products
INNER JOIN categories
ON products.CategoryID = categories.categoryID
WHERE categories.name = 'computers';

-- Find all product names, product prices, and products ratings that have a rating of 5
SELECT products.name, products.Price, reviews.rating FROM products
INNER JOIN Reviews
ON products.ProductID = reviews.ProductID
WHERE reviews.rating = 5;

-- Find the employee with the most total quantity sold.  use the sum() function and group by
SELECT employees.FirstName, sum(sales.Quantity) as total FROM employees
INNER JOIN sales
ON sales.EmployeeID = employees.EmployeeID
GROUP BY sales.EmployeeID
ORDER BY total desc;

--  Find the name of the department, and the name of the category for Appliances and Games
SELECT departments.name, categories.name FROM Departments
INNER JOIN categories
ON Departments.DepartmentID = categories.DepartmentID
WHERE Categories.name = 'Appliances' or Categories.name = 'Games';

--  Find the product name, total # sold, and total price sold, for Eagles: Hotel California --You may need to use SUM()
SELECT products.Name, sum(sales.Quantity), sum(sales.Quantity * sales.PricePerUnit) FROM products
INNER JOIN sales
ON Products.ProductID = sales.ProductID
WHERE products.Name like '%Hotel California%';

-- Find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
SELECT Products.Name, Reviews.Reviewer, Reviews.Rating, Reviews.Comment
FROM Products 
Inner Join Reviews
ON Products.ProductID = reviews.ProductID
WHERE Reviews.Rating = 1 AND Products.Name = 'Visio TV';





