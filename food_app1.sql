CREATE DATABASE app_food1
use app_food1
CREATE TABLE users(
	user_id INT PRIMARY KEY auto_increment,
	full_name varchar(255),
	email VARCHAR(255),
	password VARCHAR(255)
)
INSERT INTO users (full_name, email, password) VALUES 
('John Doe', 'john@email.com', 'password1'),
('Jane Smith', 'jane@email.com', 'password2'),
('Emily Johnson', 'emily@email.com', 'password3'),
('Michael Brown', 'michael@email.com', 'password4'),
('Sarah Williams', 'sarah@email.com', 'password5');
INSERT INTO users (full_name, email, password) VALUES 
('Văn Huỳnh', 'huynh@email.com', 'password1'),
('Jane Nguyễn', 'janenguyen@email.com', 'password2'),
('Emily Rate', 'emirate@email.com', 'password3'),
('Michael Owen', 'owenmichael@email.com', 'password4'),
('Sarah Alaska', 'alaska@email.com', 'password5');

CREATE TABLE restaurant(
	res_id INT PRIMARY KEY auto_increment,
	res_name varchar(255),
	image VARCHAR(255),
	description VARCHAR(255)
)
INSERT INTO restaurant (res_name, image, description) VALUES 
('Restaurant A', 'image1.jpg', 'Description for Restaurant A'),
('Restaurant B', 'image2.jpg', 'Description for Restaurant B'),
('Restaurant C', 'image3.jpg', 'Description for Restaurant C'),
('Restaurant D', 'image4.jpg', 'Description for Restaurant D'),
('Restaurant E', 'image5.jpg', 'Description for Restaurant E');

CREATE TABLE rate_res(
	rate_res_id INT PRIMARY KEY auto_increment,
	user_id INT,
	res_id INT,
	amount INT,
	date_rate datetime,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
)
INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES 
(1, 1, 4, '2023-01-01 12:00:00'),
(2, 2, 5, '2023-01-02 14:30:00'),
(3, 1, 3, '2023-01-03 16:45:00'),
(4, 1, 2, '2023-01-04 10:15:00'),
(5, 3, 4, '2023-01-05 11:00:00');

CREATE TABLE like_res(
	like_res_id INT PRIMARY KEY auto_increment,
	user_id INT,
	res_id INT,
	date_like datetime,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
)
INSERT INTO like_res (user_id, res_id, date_like) VALUES 
(1, 2, '2009-01-01 17:00:00'),
(2, 2, '2009-01-02 17:30:00'),
(3, 2, '2009-01-03 17:45:00'),
(4, 2, '2009-01-04 17:15:00'),
(5, 2, '2009-01-05 17:00:00');

CREATE TABLE food(
	food_id INT PRIMARY KEY auto_increment,
	food_name varchar(255),
	image VARCHAR(255),
	price FLOAT,
	description VARCHAR(255),
	type_id INT,
		FOREIGN KEY (type_id) REFERENCES food_type(type_id)
)
INSERT INTO food (food_name, image, price, description, type_id) VALUES 
('Pizza', 'pizza_image.jpg', 9.99, 'Delicious cheese pizza', 1),
('Burger', 'burger_image.jpg', 8.50, 'Classic beef burger', 2),
('Pasta', 'pasta_image.jpg', 12.75, 'Creamy Alfredo pasta', 3),
('Sushi', 'sushi_image.jpg', 15.00, 'Fresh salmon sushi rolls', 4),
('Salad', 'salad_image.jpg', 7.99, 'Healthy mixed green salad', 5);

CREATE TABLE food_type(
		type_id INT PRIMARY KEY auto_increment,
		type_name VARCHAR(255)
		)
INSERT INTO food_type (type_name) VALUES 
('Italian'),
('American'),
('Asian'),
('Japanese'),
('Healthy');


CREATE TABLE orders(
	orders_id INT PRIMARY KEY auto_increment,
	user_id INT,
	food_id INT,
	amount INT,
	code VARCHAR(150),
	arr_sub_id VARCHAR(150),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (food_id) REFERENCES food(food_id)
)


INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES 
(1, 1, 2, 'CODE123', 'SUB123'),
(1, 3, 1, 'CODE124', 'SUB124'),
(1, 2, 3, 'CODE125', 'SUB125'),
(2, 3, 2, 'CODE126', 'SUB126'),
(1, 3, 1, 'CODE127', 'SUB127');



CREATE TABLE sub_food(
	sub_id INT PRIMARY KEY auto_increment,
	sub_name varchar(255),
	sub_price FLOAT,
	food_id INT,
		FOREIGN KEY (food_id) REFERENCES food(food_id)
)

INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES 
('Extra Cheese', 1.50, 1),
('Bacon', 2.00, 2),
('Garlic Bread', 3.25, 3),
('Miso Soup', 1.75, 3),
('Croutons', 0.75, 1);



