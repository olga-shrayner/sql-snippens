CREATE TABLE Products (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL NOT NULL
);

INSERT
    Products(ProductName, Manufacturer, Price, ProductCount)
VALUES
    ('iPhone 8', 'Apple', 51000, 3),
    ('P20 Lite', 'Huawei', 34000, 4),
    ('Galaxy S8', 'Samsung', 46000, 2);

select
    *
from
    Products;