-- Фильтрация и сортировка
SELECT * FROM `users` WHERE `role` = 'member' AND `username` LIKE 'A%';
SELECT * FROM `posts` ORDER BY `title` DESC;
