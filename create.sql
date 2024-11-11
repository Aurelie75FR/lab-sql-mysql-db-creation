CREATE TABLE `invoices`(
    `invoice_num` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `car` INT NOT NULL,
    `date` DATE NOT NULL,
    `customer` INT NOT NULL,
    `salesperson` INT NOT NULL
);
CREATE TABLE `salespersons`(
    `staff_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` CHAR(255) NOT NULL,
    `store` CHAR(255) NOT NULL
);
CREATE TABLE `customers`(
    `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` CHAR(255) NOT NULL,
    `phone_num` INT NOT NULL,
    `email` CHAR(255) NOT NULL,
    `adress` CHAR(255) NOT NULL,
    `city` CHAR(255) NOT NULL,
    `state_province` CHAR(255) NOT NULL,
    `country` CHAR(255) NOT NULL,
    `zip_postal` INT NOT NULL
);
CREATE TABLE `cars`(
    `VIN` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `manufacturer` CHAR(255) NOT NULL,
    `model` CHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `color` CHAR(255) NOT NULL
);
ALTER TABLE
    `customers` ADD CONSTRAINT `customers_name_foreign` FOREIGN KEY(`name`) REFERENCES `invoices`(`customer`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `cars`(`VIN`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY(`salesperson`) REFERENCES `salespersons`(`staff_id`);