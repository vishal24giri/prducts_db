
-- View statistical information about pricing
SELECT
    MAX(Price) AS "Maximum Price",
    MIN(Price) AS "Minimum Price",
    ROUND(AVG(Price), 2) AS "Average Price"
FROM products.products;

-- Find the products with the highest price

SELECT ProductName, Size, Price
FROM products.products
WHERE Price = 
    (SELECT MAX(Price)
     FROM products.products
    )
;

--convert size from oz to ml
SELECT SKU, ProductName,
    Size AS "Size (Ounces)",
    Size * 29.57353 AS "Size (Milliliters)"
FROM products.products;

--how many products are in each size
SELECT
    Size AS "Size (Ounces)",
    COUNT(SKU) AS "Number of Products"
FROM products.products
GROUP BY Size;

--Highest priced product in cosmetic product line

SELECT SKU, ProductName, CategoryID, Size, Price
FROM products.products
WHERE PRICE =
    (SELECT MAX(Price)
     FROM products.products where categoryID=3)
    AND CategoryID = 3

-- Group data based on common attribute values
SELECT
    categories.CategoryDescription,
    COUNT(products.SKU) AS "Number of SKUs",
    MAX(products.Price) AS "Maximum Price",
    MIN(products.Price) AS "Minimum Price",
    AVG(products.Price) AS "Average Price"
FROM products.products
    JOIN products.categories
    ON products.CategoryID = categories.CategoryID
GROUP BY CategoryDescription
ORDER BY COUNT(products.SKU) DESC
;

-- Filter groups with HAVING

SELECT categories.CategoryDescription,
    COUNT(products.SKU) AS "Number of SKUs"
FROM products.products
    JOIN products.categories
    ON products.CategoryID = categories.CategoryID
WHERE products.Price > 15
GROUP BY CategoryDescription
--HAVING CategoryDescription = 'Olive Oils'
--HAVING NOT CategoryDescription = 'Bath and Beauty'
HAVING COUNT(products.SKU) < 10
ORDER BY COUNT(products.SKU) DESC

-- Add columns that calculate values

SELECT SKU,
    ProductName,
    CategoryID,
    Size,
    Price,
    '8.5%' AS TaxRate,
    Price * 0.085 AS SalesTax,
    Price + (Price * 0.085) AS TotalPrice
FROM products.products;

-- Renaming columns in the result set with the AS keyword

SELECT p.ProductName "Product Name",
    p.Size "Size (Ounces)",
    p.SKU "Product SKU",
    p.Price "Price (US Dollars)",
    c.CategoryDescription "Category Description",
    c.ProductLine "Product Line"
FROM products.products p
    JOIN products.categories c
        ON p.CategoryID = c.CategoryID