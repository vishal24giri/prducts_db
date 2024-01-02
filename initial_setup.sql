DROP TABLE IF EXISTS products.products;
DROP TABLE IF EXISTS products.categories;
DROP SCHEMA IF EXISTS products;

CREATE SCHEMA products;

CREATE TABLE products.products(
    SKU CHAR(7) NOT NULL PRIMARY KEY,
    ProductName CHAR(50) NOT NULL,
    CategoryID INT,
    Size INT,
    Price DECIMAL(5,2) NOT NULL
);

CREATE TABLE products.categories(
    CategoryID INT PRIMARY KEY,
    CategoryDescription CHAR(50)
);

ALTER TABLE products.categories
ADD ProductLine CHAR(25);

INSERT INTO products.products(
    SKU,ProductName,CategoryID,Size,Price
)
VALUES 
    ('FCP008','First Cold Press',1,8,8.99),
    ('BI008', 'Basil-Infused EVO', 2, 8, 10.99),
    ('GI016', 'Garlic-Infused EVO', 2, 16, 15.99),
    ('OGEC004', 'Olive Glow Eye Cream', 3, 4, 18.99)
;

INSERT INTO products.categories
    (CategoryID, CategoryDescription, ProductLine)
VALUES
    (1, 'Olive Oils', 'Gourmet Chef'),
    (2, 'Flavor Infused Oils', 'Gourmet Chef'),
    (3, 'Bath and Beauty', 'Cosmetics')
;

SELECT * FROM products.products;
Select * FROM products.categories;

DELETE FROM products.products;

INSERT INTO products.products VALUES
    ('ALB008', 'Delicate', 1, 8, 10.99),
    ('ALB032', 'Delicate', 1, 32, 18.99),
    ('ALB064', 'Delicate', 1, 64, 22.99),
    ('ALB128', 'Delicate', 1, 128, 26.99),
    ('EV008', 'Extra Virgin', 1, 8, 8.99),
    ('EV016', 'Extra Virgin', 1, 16, 12.99),
    ('EV032', 'Extra Virgin', 1, 32, 16.99),
    ('EV064', 'Extra Virgin', 1, 64, 20.99),
    ('EV128', 'Extra Virgin', 1, 128, 24.99),
    ('FCP008', 'First Cold Press', 1, 8, 8.99),
    ('FCP016', 'First Cold Press', 1, 16, 12.99),
    ('FCP032', 'First Cold Press', 1, 32, 16.99),
    ('FCP064', 'First Cold Press', 1, 64, 20.99),
    ('FCP128', 'First Cold Press', 1, 128, 24.99),
    ('FR008', 'Frantoio', 1, 8, 10.99),
    ('FR016', 'Frantoio', 1, 16, 14.99),
    ('FR032', 'Frantoio', 1, 32, 18.99),
    ('FR064', 'Frantoio', 1, 64, 22.99),
    ('FR128', 'Frantoio', 1, 128, 26.99),
    ('HOJ008', 'Bold', 1, 8, 11.99),
    ('HOJ016', 'Bold', 1, 16, 15.99),
    ('HOJ032', 'Bold', 1, 32, 19.99),
    ('HOJ064', 'Bold', 1, 64, 23.99),
    ('HOJ128', 'Bold', 1, 128, 27.99),
    ('KRN008', 'Koroneiki', 1, 8, 10.99),
    ('KRN016', 'Koroneiki', 1, 16, 14.99),
    ('KRN032', 'Koroneiki', 1, 32, 18.99),
    ('KRN064', 'Koroneiki', 1, 64, 22.99),
    ('KRN128', 'Koroneiki', 1, 128, 26.99),
    ('LEC008', 'Leccino', 1, 8, 10.99),
    ('LEC016', 'Leccino', 1, 16, 14.99),
    ('LEC032', 'Leccino', 1, 32, 18.99),
    ('LEC064', 'Leccino', 1, 64, 22.99),
    ('LEC128', 'Leccino', 1, 128, 26.99),
    ('LGT008', 'Light', 1, 8, 8.99),
    ('LGT016', 'Light', 1, 16, 12.99),
    ('LGT032', 'Light', 1, 32, 16.99),
    ('LGT064', 'Light', 1, 64, 20.99),
    ('LGT128', 'Light', 1, 128, 24.99),
    ('MAN008', 'Manzanilla', 1, 8, 10.99),
    ('MAN016', 'Manzanilla', 1, 16, 14.99),
    ('MAN032', 'Manzanilla', 1, 32, 18.99),
    ('MAN064', 'Manzanilla', 1, 64, 22.99),
    ('MAN128', 'Manzanilla', 1, 128, 26.99),
    ('MIS008', 'Mission', 1, 8, 10.99),
    ('MIS016', 'Mission', 1, 16, 14.99),
    ('MIS032', 'Mission', 1, 32, 18.99),
    ('MIS064', 'Mission', 1, 64, 22.99),
    ('MIS128', 'Mission', 1, 128, 26.99),
    ('MOR008', 'Moraiolo', 1, 8, 10.99),
    ('MOR016', 'Moraiolo', 1, 16, 14.99),
    ('MOR032', 'Moraiolo', 1, 32, 18.99),
    ('MOR064', 'Moraiolo', 1, 64, 22.99),
    ('MOR128', 'Moraiolo', 1, 128, 26.99),
    ('OBL008', 'Oblica', 1, 8, 11.99),
    ('OBL016', 'Oblica', 1, 16, 15.99),
    ('OBL032', 'Oblica', 1, 32, 19.99),
    ('OBL064', 'Oblica', 1, 64, 22.99),
    ('OBL128', 'Oblica', 1, 128, 27.99),
    ('PEN008', 'Pendolino', 1, 8, 10.99),
    ('PEN016', 'Pendolino', 1, 16, 14.99),
    ('PEN032', 'Pendolino', 1, 32, 18.99),
    ('PEN064', 'Pendolino', 1, 64, 22.99),
    ('PEN128', 'Pendolino', 1, 128, 26.99),
    ('PCH008', 'Picholine', 1, 8, 11.99),
    ('PCH016', 'Picholine', 1, 16, 15.99),
    ('PCH032', 'Picholine', 1, 32, 19.99),
    ('PCH064', 'Picholine', 1, 64, 23.99),
    ('PCH128', 'Picholine', 1, 128, 27.99),
    ('PIC008', 'Picual', 1, 8, 10.99),
    ('PIC016', 'Picual', 1, 16, 14.99),
    ('PIC032', 'Picual', 1, 32, 18.99),
    ('PIC064', 'Picual', 1, 64, 22.99),
    ('PIC128', 'Picual', 1, 128, 26.99),
    ('PUR008', 'Pure', 1, 8, 8.99),
    ('PUR016', 'Pure', 1, 16, 12.99),
    ('PUR032', 'Pure', 1, 32, 16.99),
    ('PUR064', 'Pure', 1, 64, 20.99),
    ('PUR128', 'Pure', 1, 128, 24.99),
    ('REF008', 'Refined', 1, 8, 8.99),
    ('REF016', 'Refined', 1, 16, 12.99),
    ('REF032', 'Refined', 1, 32, 16.99),
    ('REF064', 'Refined', 1, 64, 20.99),
    ('REF128', 'Refined', 1, 128, 24.99),
    ('V008', 'Virgin', 1, 8, 8.99),
    ('V016', 'Virgin', 1, 16, 12.99),
    ('V032', 'Virgin', 1, 32, 16.99),
    ('V064', 'Virgin', 1, 64, 20.99),
    ('V128', 'Virgin', 1, 128, 24.99),
    ('MI008', 'Mandarin-Infused EVO', 2, 8, 8.99),
    ('MI016', 'Mandarin-Infused EVO', 2, 16, 12.99),
    ('MI032', 'Mandarin-Infused EVO', 2, 32, 16.99),
    ('LI008', 'Lemon-Infused EVO', 2, 8, 8.99),
    ('LI016', 'Lemon-Infused EVO', 2, 16, 12.99),
    ('LI032', 'Lemon-Infused EVO', 2, 32, 16.99),
    ('BI008', 'Basil-Infused EVO', 2, 8, 10.99),
    ('BI016', 'Basil-Infused EVO', 2, 16, 14.99),
    ('BI032', 'Basil-Infused EVO', 2, 32, 18.99),
    ('RI008', 'Rosemary-Infused EVO', 2, 8, 10.99),
    ('RI016', 'Rosemary-Infused EVO', 2, 16, 14.99),
    ('RI032', 'Rosemary-Infused EVO', 2, 32, 18.99),
    ('GI008', 'Garlic-Infused EVO', 2, 8, 11.99),
    ('GI016', 'Garlic-Infused EVO', 2, 16, 15.99),
    ('GI032', 'Garlic-Infused EVO', 2, 32, 19.99),
    ('JI008', 'Chili-Infused EVO', 2, 8, 11.99),
    ('JI016', 'Chili-Infused EVO', 2, 16, 15.99),
    ('JI032', 'Chili-Infused EVO', 2, 32, 19.99),
    ('OGEC004', 'Olive Glow eye cream', 3, 4, 18.99),
    ('OGFL006', 'Olive Glow face lotion', 3, 6, 14.99),
    ('OGBL012', 'Olive Glow body lotion', 3, 12, 12.99),
    ('OGFT006', 'Olive Glow foot treatment', 3, 6, 7.99),
    ('OGNR004', 'Olive Glow night repair', 3, 4, 21.99),
    ('OGBG016', 'Olive Glow bath gel', 3, 16, 9.99),
    ('OGHS006', 'Olive Glow hand soap', 3, 6, 6.99)
;

SELECT * FROM products.products limit 10;
