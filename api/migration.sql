ALTER TABLE `oc_order` ADD `payment_code` VARCHAR(20) NULL DEFAULT NULL AFTER `payment_country_id`;
ALTER TABLE `oc_order` ADD `shipping_code` VARCHAR(20) NULL DEFAULT NULL AFTER `payment_zone`;
ALTER TABLE `oc_order_product` ADD `seller_id` INT(10) NULL DEFAULT NULL AFTER `master_id`;



ALTER TABLE `oc_order` CHANGE `subscription_id` `subscription_id` INT(11) NULL DEFAULT NULL;



ALTER TABLE `oc_order` CHANGE `order_id` `order_id` INT(11) NOT NULL AUTO_INCREMENT, CHANGE `invoice_prefix` `invoice_prefix` VARCHAR(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `transaction_id` `transaction_id` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `store_url` `store_url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;


ALTER TABLE `oc_order` CHANGE `store_name` `store_name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `firstname` `firstname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `lastname` `lastname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `email` `email` VARCHAR(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `telephone` `telephone` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `custom_field` `custom_field` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `payment_address_id` `payment_address_id` INT(11) NULL DEFAULT NULL, CHANGE `payment_firstname` `payment_firstname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `payment_lastname` `payment_lastname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAUL[...]


ALTER TABLE `oc_order` CHANGE `payment_country_id` `payment_country_id` INT(11) NULL DEFAULT NULL, CHANGE `payment_zone` `payment_zone` VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `payment_zone_id` `payment_zone_id` INT(11) NULL DEFAULT NULL, CHANGE `payment_address_format` `payment_address_format` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `payment_custom_field` `payment_custom_field` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `payment_method` `payment_method` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `shipping_address_id` `shipping_address_id` INT(11) NULL DEFAULT NULL, CHANGE `shipping_firstname` `shipping_firstname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `shipping_lastname` `shipping_lastname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `s[...]

ALTER TABLE `oc_order` CHANGE `affiliate_id` `affiliate_id` INT(11) NULL DEFAULT NULL, CHANGE `commission` `commission` DECIMAL(15,4) NULL DEFAULT NULL, CHANGE `marketing_id` `marketing_id` INT(11) NULL DEFAULT NULL, CHANGE `tracking` `tracking` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `language_id` `language_id` INT(11) NULL DEFAULT NULL, CHANGE `language_code` `language_code` VARCHAR(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `currency_id` `currency_id` INT(11) NULL DEFAULT NULL, CHANGE `currency_code` `currency_code` VARCHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `ip` `ip` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `forwarded_ip` `forwarded_ip` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `user_agent` `user_agent` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL [...]


ALTER TABLE `oc_order` CHANGE `custom_field` `custom_field` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;
ALTER TABLE `oc_order` CHANGE `payment_address_id` `payment_address_id` INT(10) NULL DEFAULT NULL;
ALTER TABLE `oc_order` CHANGE `payment_company` `payment_company` VARCHAR(61) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;
ALTER TABLE `oc_order` CHANGE `payment_address_format` `payment_address_format` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;
ALTER TABLE `oc_order` CHANGE `payment_custom_field` `payment_custom_field` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;
ALTER TABLE `oc_order` CHANGE `shipping_address_id` `shipping_address_id` INT(10) NULL DEFAULT NULL;
