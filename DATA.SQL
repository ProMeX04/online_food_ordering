USE online_food_ordering;

INSERT INTO customers (name, phone, address, email) VALUES
(N'Nguyễn Văn An', '0987654321', N'123 Đường Láng, Hà Nội', 'an.nguyen@email.com'),
(N'Trần Thị Bình', '0912345678', N'456 Phố Huế, Hà Nội', 'binh.tran@email.com'),
(N'Lê Văn Cường', '0903112233', N'789 Giải Phóng, Hà Nội', 'cuong.le@email.com'),
(N'Phạm Thị Dung', '0966554433', N'101 Xuân Thủy, Hà Nội', 'dung.pham@email.com'),
(N'Hoàng Văn Em', '0977889900', N'112 Cầu Giấy, Hà Nội', 'em.hoang@email.com'),
(N'Đỗ Thị Gấm', '0933221144', N'131 Nguyễn Trãi, Hà Nội', 'gam.do@email.com'),
(N'Vũ Văn Hà', '0922446688', N'143 Kim Mã, Hà Nội', 'ha.vu@email.com'),
(N'Phan Thị Hương', '0944668800', N'155 Bà Triệu, Hà Nội', 'huong.phan@email.com'),
(N'Bùi Văn Ích', '0955880022', N'167 Trần Phú, Hà Nội', 'ich.bui@email.com'),
(N'Ngô Thị Khuyên', '0999002244', N'179 Lạc Long Quân, Hà Nội', 'khuyen.ngo@email.com');

INSERT INTO categories (name, description) VALUES
(N'Món chính', N'Các món ăn chính trong bữa'),
(N'Món khai vị', N'Các món ăn nhẹ mở đầu bữa ăn'),
(N'Món tráng miệng', N'Các món ăn ngọt kết thúc bữa ăn'),
(N'Đồ uống', N'Các loại nước giải khát'),
(N'Món chay', N'Các món ăn không có thịt');

INSERT INTO suppliers (name, phone, address, email) VALUES
(N'Nhà cung cấp Thực phẩm sạch', '0123456789', N'456 Đường Trường Chinh, Hà Nội', 'supplier1@email.com'),
(N'Công ty Rau quả tươi', '0987112233', N'789 Đường Giải Phóng, Hà Nội', 'supplier2@email.com'),
(N'Hải sản Biển Đông', '0903445566', N'101 Xuân Thủy, Hà Nội', 'supplier3@email.com'),
(N'Thịt sạch Ba Vì', '0966778899', N'112 Cầu Giấy, Hà Nội', 'supplier4@email.com'),
(N'Đồ uống Giải khát', '0977112244', N'131 Nguyễn Trãi, Hà Nội', 'supplier5@email.com');

INSERT INTO dishes (name, price, description, category_id, supplier_id) VALUES
(N'Phở bò', 50000, N'Phở bò truyền thống Hà Nội', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Nhà cung cấp Thực phẩm sạch')),
(N'Bún chả', 45000, N'Bún chả Hà Nội', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Nem rán', 40000, N'Nem rán Hà Nội', (SELECT id FROM categories WHERE name = N'Món khai vị'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Gỏi cuốn', 35000, N'Gỏi cuốn tôm thịt', (SELECT id FROM categories WHERE name = N'Món khai vị'), (SELECT id FROM suppliers WHERE name = N'Công ty Rau quả tươi')),
(N'Lẩu gà', 300000, N'Lẩu gà lá giang', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Cơm rang dưa bò', 60000, N'Cơm rang dưa bò', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Nhà cung cấp Thực phẩm sạch')),
(N'Mỳ ý sốt bò băm', 70000, N'Mỳ ý sốt bò băm', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Bún riêu cua', 55000, N'Bún riêu cua đồng', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Hải sản Biển Đông')),
(N'Phở cuốn', 40000, N'Phở cuốn thịt bò', (SELECT id FROM categories WHERE name = N'Món khai vị'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Nộm gà xé phay', 35000, N'Nộm gà xé phay', (SELECT id FROM categories WHERE name = N'Món khai vị'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Canh măng nấu vịt', 45000, N'Canh măng nấu vịt', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Sườn xào chua ngọt', 65000, N'Sườn xào chua ngọt', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Gà nướng mật ong', 80000, N'Gà nướng mật ong', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Tôm chiên xù', 75000, N'Tôm chiên xù', (SELECT id FROM categories WHERE name = N'Món khai vị'), (SELECT id FROM suppliers WHERE name = N'Hải sản Biển Đông')),
(N'Rau muống xào tỏi', 30000, N'Rau muống xào tỏi', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Công ty Rau quả tươi')),
(N'Đậu phụ sốt cà chua', 35000, N'Đậu phụ sốt cà chua', (SELECT id FROM categories WHERE name = N'Món chay'), (SELECT id FROM suppliers WHERE name = N'Nhà cung cấp Thực phẩm sạch')),
(N'Nấm xào thập cẩm', 40000, N'Nấm xào thập cẩm', (SELECT id FROM categories WHERE name = N'Món chay'), (SELECT id FROM suppliers WHERE name = N'Nhà cung cấp Thực phẩm sạch')),
(N'Salad Nga', 50000, N'Salad Nga', (SELECT id FROM categories WHERE name = N'Món khai vị'), (SELECT id FROM suppliers WHERE name = N'Công ty Rau quả tươi')),
(N'Súp gà ngô non', 45000, N'Súp gà ngô non', (SELECT id FROM categories WHERE name = N'Món chính'), (SELECT id FROM suppliers WHERE name = N'Thịt sạch Ba Vì')),
(N'Chè đậu xanh', 25000, N'Chè đậu xanh', (SELECT id FROM categories WHERE name = N'Món tráng miệng'), (SELECT id FROM suppliers WHERE name = N'Đồ uống Giải khát')),
(N'Bánh flan', 30000, N'Bánh flan', (SELECT id FROM categories WHERE name = N'Món tráng miệng'), (SELECT id FROM suppliers WHERE name = N'Đồ uống Giải khát')),
(N'Sinh tố bơ', 35000, N'Sinh tố bơ', (SELECT id FROM categories WHERE name = N'Đồ uống'), (SELECT id FROM suppliers WHERE name = N'Công ty Rau quả tươi')),
(N'Cafe đen', 20000, N'Cafe đen', (SELECT id FROM categories WHERE name = N'Đồ uống'), (SELECT id FROM suppliers WHERE name = N'Đồ uống Giải khát')),
(N'Trà chanh', 25000, N'Trà chanh', (SELECT id FROM categories WHERE name = N'Đồ uống'), (SELECT id FROM suppliers WHERE name = N'Đồ uống Giải khát')),
(N'Rau củ luộc', 30000, N'Rau củ luộc', (SELECT id FROM categories WHERE name = N'Món chay'), (SELECT id FROM suppliers WHERE name = N'Công ty Rau quả tươi'));

INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
((SELECT id FROM customers WHERE name = N'Nguyễn Văn An'), GETDATE(), 50000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Trần Thị Bình'), GETDATE(), 95000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Lê Văn Cường'), GETDATE(), 120000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Phạm Thị Dung'), GETDATE(), 80000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Hoàng Văn Em'), GETDATE(), 75000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Đỗ Thị Gấm'), GETDATE(), 110000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Vũ Văn Hà'), GETDATE(), 60000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Phan Thị Hương'), GETDATE(), 90000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Bùi Văn Ích'), GETDATE(), 85000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Ngô Thị Khuyên'), GETDATE(), 100000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Nguyễn Văn An'), GETDATE(), 70000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Trần Thị Bình'), GETDATE(), 115000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Lê Văn Cường'), GETDATE(), 55000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Phạm Thị Dung'), GETDATE(), 95000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Hoàng Văn Em'), GETDATE(), 105000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Đỗ Thị Gấm'), GETDATE(), 65000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Vũ Văn Hà'), GETDATE(), 80000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Phan Thị Hương'), GETDATE(), 125000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Bùi Văn Ích'), GETDATE(), 75000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Ngô Thị Khuyên'), GETDATE(), 90000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Nguyễn Văn An'), GETDATE(), 60000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Trần Thị Bình'), GETDATE(), 100000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Lê Văn Cường'), GETDATE(), 70000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Phạm Thị Dung'), GETDATE(), 115000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Hoàng Văn Em'), GETDATE(), 55000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Đỗ Thị Gấm'), GETDATE(), 95000, N'Đã giao'),
((SELECT id FROM customers WHERE name = N'Vũ Văn Hà'), GETDATE(), 105000, N'Đang giao'),
((SELECT id FROM customers WHERE name = N'Phan Thị Hương'), GETDATE(), 65000, N'Đã hủy'),
((SELECT id FROM customers WHERE name = N'Bùi Văn Ích'), GETDATE(), 80000, N'Đang xử lý'),
((SELECT id FROM customers WHERE name = N'Ngô Thị Khuyên'), GETDATE(), 125000, N'Đã giao');

-- Insert sample data into order_details
INSERT INTO order_details (order_id, dish_id, quantity, price_at_time) VALUES
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Nguyễn Văn An') AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Phở bò' ORDER BY id), 1, 50000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Trần Thị Bình') AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Bún chả' ORDER BY id), 2, 45000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Lê Văn Cường') AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Nem rán' ORDER BY id), 3, 40000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phạm Thị Dung') AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Gỏi cuốn' ORDER BY id), 2, 35000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Hoàng Văn Em') AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Lẩu gà' ORDER BY id), 1, 300000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Đỗ Thị Gấm')AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Cơm rang dưa bò' ORDER BY id), 2, 60000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Vũ Văn Hà')AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Mỳ ý sốt bò băm' ORDER BY id), 1, 70000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phan Thị Hương')AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Bún riêu cua' ORDER BY id), 2, 55000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Bùi Văn Ích')AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Phở cuốn' ORDER BY id), 2, 40000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Ngô Thị Khuyên')AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Nộm gà xé phay' ORDER BY id), 3, 35000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Nguyễn Văn An')AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Canh măng nấu vịt' ORDER BY id), 2, 45000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Trần Thị Bình')AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Sườn xào chua ngọt' ORDER BY id), 1, 65000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Lê Văn Cường')AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Gà nướng mật ong' ORDER BY id), 1, 80000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phạm Thị Dung')AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Tôm chiên xù' ORDER BY id), 2, 75000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Hoàng Văn Em')AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Rau muống xào tỏi' ORDER BY id), 3, 30000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Đỗ Thị Gấm')AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Đậu phụ sốt cà chua' ORDER BY id), 2, 35000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Vũ Văn Hà')AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Nấm xào thập cẩm' ORDER BY id), 2, 40000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phan Thị Hương')AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Salad Nga' ORDER BY id), 3, 50000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Bùi Văn Ích')AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Súp gà ngô non' ORDER BY id), 2, 45000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Ngô Thị Khuyên')AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Chè đậu xanh' ORDER BY id), 4, 25000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Nguyễn Văn An') AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Phở bò' ORDER BY id), 1, 50000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Trần Thị Bình') AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Bún chả' ORDER BY id), 2, 45000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Lê Văn Cường') AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Nem rán' ORDER BY id), 3, 40000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phạm Thị Dung') AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Gỏi cuốn' ORDER BY id), 2, 35000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Hoàng Văn Em') AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Lẩu gà' ORDER BY id), 1, 300000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Đỗ Thị Gấm')AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Cơm rang dưa bò' ORDER BY id), 2, 60000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Vũ Văn Hà')AND status =  N'Đang giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Mỳ ý sốt bò băm' ORDER BY id), 1, 70000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phan Thị Hương')AND status = N'Đã hủy' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Bún riêu cua' ORDER BY id), 2, 55000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Bùi Văn Ích')AND status = N'Đang xử lý' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Phở cuốn' ORDER BY id), 2, 40000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Ngô Thị Khuyên')AND status = N'Đã giao' ORDER BY id), (SELECT TOP 1 id FROM dishes WHERE name = N'Nộm gà xé phay' ORDER BY id), 3, 35000);

INSERT INTO payments (order_id, payment_method, payment_date, amount) VALUES
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Nguyễn Văn An') AND status = N'Đang xử lý' ORDER BY id), N'Tiền mặt', GETDATE(), 50000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Trần Thị Bình')AND status = N'Đã giao' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 95000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Lê Văn Cường')AND status =  N'Đang giao' ORDER BY id), N'Ví điện tử', GETDATE(), 120000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phạm Thị Dung')AND status = N'Đã hủy' ORDER BY id), N'Tiền mặt', GETDATE(), 0),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Hoàng Văn Em')AND status = N'Đang xử lý' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 75000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Đỗ Thị Gấm')AND status = N'Đã giao' ORDER BY id), N'Ví điện tử', GETDATE(), 110000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Vũ Văn Hà')AND status =  N'Đang giao' ORDER BY id), N'Tiền mặt', GETDATE(), 60000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phan Thị Hương')AND status = N'Đã hủy' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 0),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Bùi Văn Ích')AND status = N'Đang xử lý' ORDER BY id), N'Ví điện tử', GETDATE(), 85000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Ngô Thị Khuyên')AND status = N'Đã giao' ORDER BY id), N'Tiền mặt', GETDATE(), 100000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Nguyễn Văn An')AND status =  N'Đang giao' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 70000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Trần Thị Bình')AND status = N'Đã hủy' ORDER BY id), N'Ví điện tử', GETDATE(), 0),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Lê Văn Cường')AND status = N'Đang xử lý' ORDER BY id), N'Tiền mặt', GETDATE(), 55000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phạm Thị Dung')AND status = N'Đã giao' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 95000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Hoàng Văn Em')AND status =  N'Đang giao' ORDER BY id), N'Ví điện tử', GETDATE(), 105000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Đỗ Thị Gấm')AND status = N'Đã hủy' ORDER BY id), N'Tiền mặt', GETDATE(), 0),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Vũ Văn Hà')AND status = N'Đang xử lý' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 80000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phan Thị Hương')AND status = N'Đã giao' ORDER BY id), N'Ví điện tử', GETDATE(), 125000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Bùi Văn Ích')AND status =  N'Đang giao' ORDER BY id), N'Tiền mặt', GETDATE(), 75000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Ngô Thị Khuyên')AND status = N'Đã hủy' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 90000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Nguyễn Văn An') AND status = N'Đang xử lý' ORDER BY id), N'Tiền mặt', GETDATE(), 50000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Trần Thị Bình') AND status = N'Đã giao' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 95000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Lê Văn Cường') AND status =  N'Đang giao' ORDER BY id), N'Ví điện tử', GETDATE(), 120000),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Phạm Thị Dung') AND status = N'Đã hủy' ORDER BY id), N'Tiền mặt', GETDATE(), 0),
((SELECT TOP 1 id FROM orders WHERE customer_id = (SELECT TOP 1 id FROM customers WHERE name = N'Hoàng Văn Em') AND status = N'Đang xử lý' ORDER BY id), N'Thẻ tín dụng', GETDATE(), 75000);
