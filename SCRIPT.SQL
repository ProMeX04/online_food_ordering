Use online_food_ordering;
DECLARE @order_id INT, @order_status NVARCHAR(30);
EXEC [CreateOrder] @customer_id = 1, @status = @order_status OUTPUT, @order_id = @order_id OUTPUT;
EXEC [AddDishToOrder] @order_id = @order_id, @dish_id = 2, @quantity = 1;
EXEC [AddDishToOrder] @order_id = @order_id, @dish_id = 3, @quantity = 2;
EXEC [ProcessPayment] @order_id = @order_id, @payment_method = N'Tiền mặt';

SELECT [dishes].name, quantity, price_at_time
FROM [order_details]
JOIN [dishes]
ON [dishes].id = [order_details].dish_id
WHERE order_id = @order_id;

SELECT [orders].customer_id, name, order_date, total_amount, orders.status
FROM [orders]
JOIN [customers]
ON [customers].id = [orders].customer_id
WHERE orders.id = @order_id;
