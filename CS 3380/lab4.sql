/*
William Johnke
wmjxb2
14253530
February 13 2016
CS 3380
*/


drop table if exists `orders`;
drop table if exists `product`;
drop table if exists `order_item`;
drop table if exists `person`;

CREATE TABLE `person`(
	`person_id` int AUTO_INCREMENT,
	`name` varchar(255),
	PRIMARY KEY(person_id)
);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`(
	`person_id` int,
	`order_id` int AUTO_INCREMENT,
	`order_date` DATE,
	`order_number` int,
	FOREIGN KEY(person_id) REFERENCES person(`person_id`),
	PRIMARY KEY(order_id)
);

drop table if exists `product`;
create table `product`(
        `product_id` int,
        `name` varchar(255),
        `sku` int,
        PRIMARY KEY(product_id)
);

drop table if exists `order_item`;
create table `order_item`(
	`order_item_id` int,
	`product_id` int,
	`order_id` int,
	`quantity` int,
	PRIMARY KEY(order_item_id),
	FOREIGN KEY(product_id) REFERENCES product(`product_id`),
	FOREIGN KEY(order_id) REFERENCES orders(`order_id`)
);

