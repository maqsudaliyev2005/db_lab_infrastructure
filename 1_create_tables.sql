CREATE TABLE `users` (
     `id` integer PRIMARY KEY,
     `username` varchar(255),
     `role` varchar(255),
     `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
   );

   CREATE TABLE `posts` (
     `id` integer PRIMARY KEY,
     `title` varchar(255),
     `user_id` integer NOT NULL,
     `status` varchar(255),
     `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
   );

   ALTER TABLE `posts` ADD CONSTRAINT `user_posts` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
