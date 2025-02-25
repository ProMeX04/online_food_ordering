USE online_food_ordering;
GO


CREATE FUNCTION CalculateDishRevenue (@dish_id INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total_revenue DECIMAL(10, 2);

    SELECT @total_revenue = SUM(od.quantity * od.price_at_time)
    FROM order_details od
    WHERE od.dish_id = @dish_id;

    RETURN ISNULL(@total_revenue, 0);
END
GO

CREATE FUNCTION GetCustomerOrderCount (@customer_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @order_count INT;

    SELECT @order_count = COUNT(*)
    FROM orders
    WHERE customer_id = @customer_id;

    RETURN ISNULL(@order_count, 0);
END
GO

CREATE FUNCTION GetAverageOrderValue ()
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @avg_order_value DECIMAL(10, 2);

    SELECT @avg_order_value = AVG(total_amount)
    FROM orders;

    RETURN ISNULL(@avg_order_value, 0);
END
GO

CREATE FUNCTION GetMostPopularDish ()
RETURNS NVARCHAR(30)
AS
BEGIN
    DECLARE @most_popular_dish NVARCHAR(30);

    SELECT TOP 1 @most_popular_dish = d.name
    FROM order_details od
    JOIN dishes d ON od.dish_id = d.id
    GROUP BY d.name
    ORDER BY SUM(od.quantity) DESC;

    RETURN ISNULL(@most_popular_dish, N'Không có món ăn');
END
GO


CREATE FUNCTION CalculateCategoryRevenue (@category_id INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total_revenue DECIMAL(10, 2);

    SELECT @total_revenue = SUM(od.quantity * od.price_at_time)
    FROM order_details od
    JOIN dishes d ON od.dish_id = d.id
	WHERE d.category_id = @category_id;

    RETURN ISNULL(@total_revenue, 0);
END
GO


