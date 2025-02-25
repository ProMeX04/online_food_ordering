USE online_food_ordering;

-- 1. Lấy tất cả khách hàng
SELECT * FROM customers;

-- 2. Lấy tất cả món ăn trong danh mục 'Món chính'
SELECT *
FROM dishes
WHERE category_id = (SELECT id FROM categories WHERE name = N'Món chính');

-- 3. Lấy tất cả đơn hàng được đặt bởi khách hàng 'Nguyễn Văn An'
SELECT *
FROM orders
WHERE customer_id = (SELECT id FROM customers WHERE name = N'Nguyễn Văn An');

-- 4. Tính tổng doanh thu cho 'Phở bò'
SELECT dbo.CalculateDishRevenue((SELECT id FROM dishes WHERE name = N'Phở bò')) AS "Total Revenue";

-- 5. Lấy số lượng đơn hàng của khách hàng 'Trần Thị Bình'
SELECT dbo.GetCustomerOrderCount((SELECT id FROM customers WHERE name = N'Trần Thị Bình')) AS "Order Count";

-- 6. Lấy giá trị trung bình của đơn hàng
SELECT dbo.GetAverageOrderValue() AS "Average Order Value";

-- 7. Lấy món ăn phổ biến nhất
SELECT dbo.GetMostPopularDish() AS "Most Popular Dish";

-- 8. Tính tổng doanh thu cho danh mục 'Món chính'
SELECT dbo.CalculateCategoryRevenue((SELECT id FROM categories WHERE name = N'Món chính')) AS "Total Revenue";
