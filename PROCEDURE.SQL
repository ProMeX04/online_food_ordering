USE online_food_ordering;
GO

-- 1. Stored procedure to create a new order
CREATE PROCEDURE CreateOrder (
    @customer_id INT,
    @status NVARCHAR(30) OUTPUT,
	@order_id INT OUTPUT
)
AS
BEGIN
    -- Check if customer exists
    IF NOT EXISTS (SELECT 1 FROM customers WHERE id = @customer_id)
    BEGIN
        RAISERROR('Invalid customer ID.', 16, 1)
        RETURN
    END
	
	INSERT INTO orders (customer_id, order_date, total_amount, status)
    VALUES (@customer_id, GETDATE(), 0, N'Đang xử lý');

	SET @order_id = SCOPE_IDENTITY();
	SET @status = N'Đang xử lý';
END
GO


-- 2. Stored procedure to add dishes to an order
CREATE PROCEDURE AddDishToOrder (
    @order_id INT,
    @dish_id INT,
    @quantity INT
)
AS
BEGIN
    -- Check if order and dish exist
    IF NOT EXISTS (SELECT 1 FROM orders WHERE id = @order_id)
    BEGIN
        RAISERROR('Invalid order ID.', 16, 1)
        RETURN
    END

    IF NOT EXISTS (SELECT 1 FROM dishes WHERE id = @dish_id)
    BEGIN
        RAISERROR('Invalid dish ID.', 16, 1)
        RETURN
    END
	
	-- Get dish price
    DECLARE @price DECIMAL(10, 2);
    SELECT @price = price FROM dishes WHERE id = @dish_id;

    -- Insert into order_details table
    INSERT INTO order_details (order_id, dish_id, quantity, price_at_time)
    VALUES (@order_id, @dish_id, @quantity, @price);

	-- Calculate total amount
    DECLARE @total_amount DECIMAL (10,2);
    SELECT @total_amount = SUM(quantity * price_at_time) FROM order_details WHERE order_id = @order_id;

    -- Update total amount in orders table
    UPDATE orders
    SET total_amount = @total_amount
    WHERE id = @order_id;
END
GO







-- 3. Stored procedure to process payment for an order
CREATE PROCEDURE ProcessPayment (
    @order_id INT,
    @payment_method NVARCHAR(20)
)
AS
BEGIN
    -- Check if order exists
    IF NOT EXISTS (SELECT 1 FROM orders WHERE id = @order_id)
    BEGIN
        RAISERROR('Invalid order ID.', 16, 1)
        RETURN
    END

	-- Get total amount
    DECLARE @total_amount DECIMAL (10,2);
    SELECT @total_amount = total_amount FROM orders WHERE id = @order_id;

    -- Insert into payments table
    INSERT INTO payments (order_id, payment_method, payment_date, amount)
    VALUES (@order_id, @payment_method, GETDATE(), @total_amount);

	--Update order status
	UPDATE orders
	SET status = N'Đã thanh toán'
	WHERE id = @order_id;
END
GO