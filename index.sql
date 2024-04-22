CREATE TABLE Product
(
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);
CREATE TABLE Customer
(
    Customer_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
);
CREATE TABLE Orders
(
    Customer_Id VARCHAR2(20) FOREIGN KEY REFERENCES Customer(Customer_Id),
    Product_Id VARCHAR2(20) FOREIGN KEY REFERENCES Product(Product_Id),
    Quantity NUMBER,
    Total_amount NUMBER
); 
ALTER TABLE Product
ADD Category VARCHAR2(20);

ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE; 