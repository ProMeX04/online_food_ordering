-- Active: 1738862623192@@127.0.0.1@1433@master
CREATE DATABASE online_food_ordering;
USE online_food_ordering;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'customers')
BEGIN 
    CREATE TABLE [customers] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        name NVARCHAR(50),
        phone VARCHAR(10),
        address NVARCHAR (100),
        email VARCHAR(100)
    )
END;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'categories') 
BEGIN 
    CREATE TABLE [categories] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        name NVARCHAR(50),
        description NVARCHAR(200)
    )
END;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'suppliers') 
BEGIN 
    CREATE TABLE [suppliers] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        name NVARCHAR(50),
        phone VARCHAR(10),
        address NVARCHAR(100),
        email VARCHAR(100)
    )
END;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'dishes') 
BEGIN 
    CREATE TABLE [dishes] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        name NVARCHAR(30),
        price DECIMAL(10, 2),
        description NVARCHAR(200),
        category_id INT REFERENCES [categories](id) ON DELETE CASCADE,
        supplier_id INT REFERENCES [suppliers](id) ON DELETE CASCADE
    )
END;
exec sp_tables;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'orders') 
BEGIN 
    CREATE TABLE [orders] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        customer_id INT REFERENCES [customers](id),
        order_date DATE,
        total_amount INT,
        status NVARCHAR(30)
    )
END;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'order_details') 
BEGIN 
    CREATE TABLE [order_details] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        order_id INT REFERENCES [orders](id),
        dish_id INT REFERENCES [dishes](id),
        quantity INT,
        price_at_time INT
    )
END;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'payments') 
BEGIN 
    CREATE TABLE [payments] (
        id INT PRIMARY KEY IDENTITY(1, 1),
        order_id INT REFERENCES [orders](id),
        payment_method NVARCHAR(20),
        payment_date DATE,
        amount INT
    )
END;

exec sp_tables;