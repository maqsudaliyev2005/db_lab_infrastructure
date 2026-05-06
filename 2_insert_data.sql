INSERT INTO `users` (`id`, `username`, `role`) VALUES
(1, 'Admin_Ivan', 'admin'),
(2, 'Oleg_User', 'member'),
(3, 'Anna_Member', 'member'),
(4, 'Dmitry_Mod', 'moderator'),
(5, 'Elena_User', 'member');

INSERT INTO `posts` (`id`, `title`, `user_id`, `status`) VALUES
(1, 'Database Lab 2', 1, 'published'),
(2, 'SQL Progress', 2, 'published'),
(3, 'My First Post', 3, 'published'),
(4, 'Important Rules', 4, 'published'),
(5, 'Private Draft', 5, 'draft');
