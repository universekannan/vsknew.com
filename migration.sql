alter table oc_product_description modify bar_code varchar(15) DEFAULT NULL;
update oc_product_description set bar_code=NULL where bar_code='';

update users set shop_id=1 where id=1;
update users set shop_id=2 where id=2;
update users set shop_name='Warehouse' where id=1;
update users set shop_name='Peyankuzhi' where id=2;

insert into stock (shop_id,item_id,stock) select 1,product_id,0 from oc_product;
insert into stock (shop_id,item_id,stock) select 2,product_id,100 from oc_product;

23/02/24

alter table oc_product add buying_price decimal(10,2) DEFAULT 0 after price;
alter table oc_product add discount_price decimal(10,2) DEFAULT 0 after buying_price;
alter table oc_product add mrp decimal(10,2) DEFAULT 0 after buying_price;
alter table oc_product add discount_price_min_weight varchar(10) DEFAULT NULL after discount_price;



CREATE TABLE `order_management` (`id` INT NOT NULL AUTO_INCREMENT , `order_id` INT(10) NULL DEFAULT NULL , `user_id` INT(10) NULL DEFAULT NULL , `order_status_id` INT(2) NULL DEFAULT NULL , `order_date` DATE NULL DEFAULT NULL , `updated_at` DATE NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

ALTER TABLE `order_management` ADD `log_id` INT(10) NULL DEFAULT NULL AFTER `updated_at`;
ALTER TABLE `oc_order_product` ADD `packaging` INT(1) NOT NULL DEFAULT '0' AFTER `reward`;


ALTER TABLE `order_management` CHANGE `order_date` `order_date` DATETIME NULL DEFAULT NULL, CHANGE `updated_at` `updated_at` DATETIME NULL DEFAULT NULL;
ALTER TABLE `shop_billing` ADD `login_id` INT NULL DEFAULT NULL AFTER `net_amount`;
ALTER TABLE `shop_billing` ADD `order_id` INT(10) NULL DEFAULT NULL AFTER `login_id`;
ALTER TABLE `shop_billing` ADD `customer_id` INT(10) NULL DEFAULT NULL AFTER `order_id`;
ALTER TABLE `shop_billing` ADD `order_status_id` INT(10) NULL DEFAULT NULL AFTER `customer_id`;
ALTER TABLE `shop_billing` CHANGE `bill_date` `bill_date` DATETIME NULL DEFAULT NULL;
ALTER TABLE `shop_billing` ADD `user_id` INT(10) NULL DEFAULT NULL AFTER `order_status_id`;
ALTER TABLE `shop_billing` CHANGE `shop_id` `shop_id` INT(11) NULL DEFAULT NULL, CHANGE `billnum` `billnum` INT(11) NULL DEFAULT NULL, CHANGE `total` `total` DECIMAL(10,2) NULL DEFAULT NULL;



ALTER TABLE `user_permission` CHANGE `Login_id` `login_id` INT(11) NULL DEFAULT '0';
ALTER TABLE `order_management` ADD `shop_id` INT(10) NULL DEFAULT NULL AFTER `order_id`;


ALTER TABLE `user_types` ADD `dashboard` INT(1) NOT NULL DEFAULT '0' AFTER `status`, ADD `usertype` INT(1) NOT NULL DEFAULT '0' AFTER `dashboard`, ADD `addusertype` INT(1) NOT NULL DEFAULT '0' AFTER `usertype`, ADD `editusertype` INT(1) NOT NULL DEFAULT '0' AFTER `addusertype`, ADD `deleteusertype` INT(1) NOT NULL DEFAULT '0' AFTER `editusertype`, ADD `users` INT(1) NOT NULL DEFAULT '0' AFTER `deleteusertype`, ADD `adduser` INT(1) NOT NULL DEFAULT '0' AFTER `users`, ADD `edituser` INT(1) NOT NULL DEFAULT '0' AFTER `adduser`, ADD `deleteuser` INT(1) NOT NULL DEFAULT '0' AFTER `edituser`, ADD `billing` INT(1) NOT NULL DEFAULT '0' AFTER `deleteuser`;


ALTER TABLE `users` ADD `dashboard` INT(1) NOT NULL DEFAULT '0' AFTER `nric`, ADD `usertype` INT(1) NOT NULL DEFAULT '0' AFTER `dashboard`, ADD `addusertype` INT(1) NOT NULL DEFAULT '0' AFTER `usertype`, ADD `editusertype` INT(1) NOT NULL DEFAULT '0' AFTER `addusertype`, ADD `deleteusertype` INT(1) NOT NULL DEFAULT '0' AFTER `editusertype`, ADD `users` INT(1) NOT NULL DEFAULT '0' AFTER `deleteusertype`, ADD `adduser` INT(1) NOT NULL DEFAULT '0' AFTER `users`, ADD `edituser` INT(1) NOT NULL DEFAULT '0' AFTER `adduser`, ADD `deleteuser` INT(1) NOT NULL DEFAULT '0' AFTER `edituser`, ADD `billing` INT(1) NOT NULL DEFAULT '0' AFTER `deleteuser`;

ALTER TABLE `oc_order` ADD `shop_id` INT(10) NULL DEFAULT NULL AFTER `order_id`;


TRUNCATE `oc_order`;
TRUNCATE `oc_order_history`;
TRUNCATE `oc_order_option`;
TRUNCATE `oc_order_product`;
TRUNCATE `oc_order_subscription`;
TRUNCATE `oc_order_total`;
TRUNCATE `oc_order_voucher`;
TRUNCATE `order_management`;


CREATE TABLE `oc_product_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `oc_product_purchase` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 0,
  `purchase_price` varchar(10) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

ALTER TABLE `oc_product_stock` ADD `minimum` INT(10) NOT NULL DEFAULT '0' AFTER `quantity`;


ALTER TABLE `oc_order` ADD `project_status` INT(1) NULL DEFAULT '0' AFTER `custom_field`;
ALTER TABLE `transaction` ADD `oc_order_id` VARCHAR(10) NULL DEFAULT NULL AFTER `merchant_order_id`;


CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `amount` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `tranjactionid` text NOT NULL,
  `merchant_order_id` text NOT NULL,
  `oc_order_id` varchar(10) DEFAULT NULL,
  `response` text NOT NULL,
  `type` text NOT NULL,
  `status` varchar(10) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;



ALTER TABLE `oc_order_product` CHANGE `quantity` `quantity` DECIMAL(10,2) NOT NULL;
ALTER TABLE `users` ADD `colour` INT(1) NULL AFTER `login_id`;

ALTER TABLE `oc_product` CHANGE `price` `price` DECIMAL(15,2) NOT NULL DEFAULT '0.00';
ALTER TABLE `oc_order_product` CHANGE `price` `price` DECIMAL(15,2) NOT NULL DEFAULT '0.00';
ALTER TABLE `oc_order_product` CHANGE `total` `total` DECIMAL(15,2) NOT NULL DEFAULT '0.00', CHANGE `tax` `tax` DECIMAL(15,2) NOT NULL DEFAULT '0.00';
ALTER TABLE `oc_order_total` CHANGE `value` `value` DECIMAL(15,2) NULL DEFAULT '0.00';
ALTER TABLE `oc_order` CHANGE `total` `total` DECIMAL(15,2) NOT NULL DEFAULT '0.00', CHANGE `commission` `commission` DECIMAL(15,2) NULL DEFAULT NULL;


ALTER TABLE `oc_product` ADD `selling_type` INT(11) NOT NULL DEFAULT '1' AFTER `vsk_user_id`;