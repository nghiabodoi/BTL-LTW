-- VisualPick Database Dump

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `action` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `details` text COLLATE utf8mb4_general_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('1', '11', 'login', 'User', '11', 'Admin login successful', '::1', '2026-06-05 14:57:42');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('2', '11', 'create', 'Product', '43', 'Created product: 1', '::1', '2026-06-05 15:40:39');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('3', '11', 'update', 'Order', '1', 'Updated order status to: pending', '::1', '2026-06-05 17:28:50');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('4', '11', 'update', 'Order', '1', 'Updated order status to: processing', '::1', '2026-06-05 17:28:55');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('5', '11', 'update', 'Order', '1', 'Updated order status to: shipped', '::1', '2026-06-05 17:29:00');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('6', '11', 'update', 'Order', '1', 'Updated order status to: delivered', '::1', '2026-06-05 17:29:15');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('7', '11', 'delete', 'Product', '43', 'Deleted product: 1', '::1', '2026-06-05 21:46:22');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('8', '12', 'logout', 'User', '12', 'Admin logout', '::1', '2026-06-05 23:02:02');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('9', '11', 'login', 'User', '11', 'Admin login successful', '::1', '2026-06-05 23:02:08');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('10', '11', 'delete', 'Product', '44', 'Deleted product: V (BTS) - Áo khoác Celine Varsity Jacket', '::1', '2026-06-05 23:03:52');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('11', '11', 'update', 'User', '10', 'Updated user: bjdsbds@g', '::1', '2026-06-05 23:06:38');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('12', '11', 'update', 'Order', '2', 'Updated order status to: processing', '::1', '2026-06-05 23:07:28');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('13', '11', 'update', 'Order', '2', 'Updated order status to: delivered', '::1', '2026-06-05 23:07:33');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('14', '11', 'update', 'Order', '3', 'Updated order status to: cancelled', '::1', '2026-06-05 23:08:53');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('15', '11', 'create', 'Product', '47', 'Created product: 12', '::1', '2026-06-05 23:14:13');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('16', '11', 'delete', 'Product', '47', 'Deleted product: 12', '::1', '2026-06-05 23:14:55');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('17', '3', 'logout', 'User', '3', 'Admin logout', '::1', '2026-06-05 23:17:46');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('18', '11', 'login', 'User', '11', 'Admin login successful', '::1', '2026-06-05 23:17:51');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES ('19', '3', 'logout', 'User', '3', 'Admin logout', '::1', '2026-06-05 23:18:55');

DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `avatar_url` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('1', 'Kpop', NULL, '2026-06-05 15:31:53', '2026-06-05 15:31:53');
INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('2', 'Vpop', NULL, '2026-06-05 15:31:53', '2026-06-05 15:31:53');
INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('3', 'US-UK', NULL, '2026-06-05 15:31:53', '2026-06-05 15:31:53');
INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('4', 'Phụ kiện', NULL, '2026-06-05 15:31:53', '2026-06-05 15:31:53');
INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('5', 'Kpop Outfit', NULL, '2026-06-05 21:59:03', '2026-06-05 21:59:03');
INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('6', 'US-UK Outfit', NULL, '2026-06-05 22:00:05', '2026-06-05 22:00:05');
INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('7', 'Vpop Outfit', NULL, '2026-06-05 22:00:05', '2026-06-05 22:00:05');

DROP TABLE IF EXISTS `lookbook_details`;
CREATE TABLE `lookbook_details` (
  `lookbook_id` int NOT NULL,
  `product_id` int NOT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  PRIMARY KEY (`lookbook_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `lookbook_details_ibfk_1` FOREIGN KEY (`lookbook_id`) REFERENCES `lookbooks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lookbook_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `lookbooks`;
CREATE TABLE `lookbooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `lookbooks_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mime_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` int DEFAULT NULL,
  `uploaded_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uploaded_by` (`uploaded_by`),
  CONSTRAINT `media_files_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES ('1', '1', '31', '1', '2500000.00');
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES ('2', '2', '45', '1', '440000.00');
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES ('3', '3', '46', '1', '300000.00');

DROP TABLE IF EXISTS `order_logs`;
CREATE TABLE `order_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `old_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `changed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_logs_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `order_logs` (`id`, `order_id`, `old_status`, `new_status`, `changed_at`) VALUES ('1', '1', 'pending', 'processing', '2026-06-05 17:28:55');
INSERT INTO `order_logs` (`id`, `order_id`, `old_status`, `new_status`, `changed_at`) VALUES ('2', '1', 'processing', 'shipped', '2026-06-05 17:29:00');
INSERT INTO `order_logs` (`id`, `order_id`, `old_status`, `new_status`, `changed_at`) VALUES ('3', '1', 'shipped', 'delivered', '2026-06-05 17:29:15');
INSERT INTO `order_logs` (`id`, `order_id`, `old_status`, `new_status`, `changed_at`) VALUES ('4', '2', 'pending', 'processing', '2026-06-05 23:07:28');
INSERT INTO `order_logs` (`id`, `order_id`, `old_status`, `new_status`, `changed_at`) VALUES ('5', '2', 'processing', 'delivered', '2026-06-05 23:07:33');
INSERT INTO `order_logs` (`id`, `order_id`, `old_status`, `new_status`, `changed_at`) VALUES ('6', '3', 'pending', 'cancelled', '2026-06-05 23:08:53');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_money` decimal(12,2) NOT NULL,
  `status` enum('pending','processing','shipped','delivered','cancelled') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `fullname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `custom_fields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_money`, `status`, `fullname`, `phone_number`, `address`, `note`, `payment_method`, `active`, `custom_fields`) VALUES ('1', '5', '2026-05-15 15:11:04', '2530000.00', 'delivered', 'Nghĩa', '6546546546', '4234234324, 432423243, 432432432', NULL, 'cod', '1', NULL);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_money`, `status`, `fullname`, `phone_number`, `address`, `note`, `payment_method`, `active`, `custom_fields`) VALUES ('2', '11', '2026-06-05 23:07:02', '470000.00', 'delivered', 'Nghĩa', '6546546546', '4234234324, ewewew, ewew', NULL, 'cod', '1', NULL);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_money`, `status`, `fullname`, `phone_number`, `address`, `note`, `payment_method`, `active`, `custom_fields`) VALUES ('3', '11', '2026-06-05 23:08:44', '330000.00', 'cancelled', 'Nghĩa', '4', '4, 1, ewew', NULL, 'cod', '1', NULL);

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `price_logs`;
CREATE TABLE `price_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `changed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `price_logs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE `product_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_reviews_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discount` decimal(5,2) DEFAULT '0.00',
  `category_id` int DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `label` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `collection_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idol_image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stock` int DEFAULT '100',
  `custom_fields` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `image_url`, `description`, `created_at`, `updated_at`, `discount`, `category_id`, `is_active`, `label`, `collection_type`, `idol_image_url`, `stock`, `custom_fields`) VALUES ('45', 'Taylor Swift - Dress', NULL, '440000.00', 'assets/uploads/6a22e475626d5_TaylorSwift-Dress.jpg', 'Sản phẩm lấy cảm hứng từ Taylor Swift - Dress', '2026-06-05 22:00:05', '2026-06-05 23:07:02', '0.00', '6', '1', NULL, NULL, NULL, '99', NULL);
INSERT INTO `products` (`id`, `name`, `brand`, `price`, `image_url`, `description`, `created_at`, `updated_at`, `discount`, `category_id`, `is_active`, `label`, `collection_type`, `idol_image_url`, `stock`, `custom_fields`) VALUES ('46', 'Biti\'s Hunter X - Sunrise Orange', NULL, '300000.00', 'assets/uploads/6a22e47567783_BitisHunterX-SunriseOrange.jpg', 'Sản phẩm lấy cảm hứng từ Biti\'s Hunter X - Sunrise Orange', '2026-06-05 22:00:05', '2026-06-05 23:08:53', '0.00', '7', '1', NULL, NULL, NULL, '100', NULL);

DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`) VALUES ('1', 'admin', NULL, '2026-06-05 00:28:12');
INSERT INTO `roles` (`id`, `name`, `description`, `created_at`) VALUES ('2', 'customer', NULL, '2026-06-05 00:28:12');
INSERT INTO `roles` (`id`, `name`, `description`, `created_at`) VALUES ('3', 'Support', 'Can manage tickets and users', '2026-06-05 00:28:12');

DROP TABLE IF EXISTS `ticket_messages`;
CREATE TABLE `ticket_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ticket_messages_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ticket_messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `user_id`, `message`, `is_admin`, `created_at`) VALUES ('1', '1', '12', '1', '0', '2026-06-05 22:34:51');
INSERT INTO `ticket_messages` (`id`, `ticket_id`, `user_id`, `message`, `is_admin`, `created_at`) VALUES ('2', '1', '11', '2', '1', '2026-06-05 22:51:33');
INSERT INTO `ticket_messages` (`id`, `ticket_id`, `user_id`, `message`, `is_admin`, `created_at`) VALUES ('3', '2', '3', '323223', '0', '2026-06-05 23:17:27');
INSERT INTO `ticket_messages` (`id`, `ticket_id`, `user_id`, `message`, `is_admin`, `created_at`) VALUES ('4', '2', '11', '4544', '1', '2026-06-05 23:18:20');

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('open','in_progress','resolved','closed') COLLATE utf8mb4_general_ci DEFAULT 'open',
  `priority` enum('low','medium','high','urgent') COLLATE utf8mb4_general_ci DEFAULT 'low',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tickets` (`id`, `user_id`, `subject`, `status`, `priority`, `created_at`, `updated_at`) VALUES ('1', '12', '1', 'closed', 'medium', '2026-06-05 22:34:51', '2026-06-05 23:05:50');
INSERT INTO `tickets` (`id`, `user_id`, `subject`, `status`, `priority`, `created_at`, `updated_at`) VALUES ('2', '3', '2123', 'open', 'medium', '2026-06-05 23:17:27', '2026-06-05 23:18:20');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `password` char(60) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('3', 'Nghĩa', 'asbsgshaas@gmail.com', '$2y$10$Eplqy6Z2YrZ2i5IQ2FdjpeXUqLPFLKrgQSYF4IYP8tV8ohY5SKNti', '2026-05-11 22:06:12', '1', '2');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('5', 'Nghĩa', 'dinhducnghia051005@gmail.com', '$2y$10$whLyEjd/cv.WRuKO5HqQDOOO/cTgpWCyJPHYVNG.zKCrXjKrAx8o2', '2026-05-11 22:06:23', '1', '2');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('7', 'Nghĩa', 'dinhducnghia0100@gmail.com', '$2y$10$gek23CJdWql1Y/Z1macuGeSvwQ3zaQ3FRjcuyUbnmeVuENWSke/Oi', '2026-05-11 22:12:35', '1', '2');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('8', 'Nghĩa', 'dinhducnghia010@gmail.com', '$2y$10$LHZ1fioyzFXXfezEpfB2t.JgftoJt10CbMMTQ6oX.0PbTMTFcTcp2', '2026-05-11 22:13:21', '1', '2');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('9', 'Nghĩa', 'bdgbjdgjgd@gmail.com', '$2y$10$JfIMWNoVO4myFtVJZRR7UORfxn/5JraDD3OYHCYLbJ/Tgh0zYB9zq', '2026-05-11 22:16:28', '1', '2');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('10', 'nghjgif', 'bjdsbds@g', '$2y$10$sSueysDYd1d8OZfJyQq4e.GQDeOr/UQPjd5dQZTWrddkPw0Vpl9Oy', '2026-05-15 15:09:47', '1', '1');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('11', 'Super Admin', 'admin@visualpick.com', '$2y$10$aEMvk8t36aT4F3sGUqtAAu3A5JI7Nhsw6fn1qxLded0yE8OBObSya', '2026-06-05 00:57:34', '1', '1');
INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `is_active`, `role_id`) VALUES ('12', 'Nghĩa', 'asasas@gmail.com', '$2y$10$qfDci7pZ7pnOxh8NNpAxaebUnIX36y7CzA49qx3YQnn0/IRy1yaxG', '2026-06-05 22:34:19', '1', '2');

DROP TABLE IF EXISTS `webhooks`;
CREATE TABLE `webhooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `target_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_product` (`user_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


