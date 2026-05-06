-- Объединение таблиц (JOIN)
SELECT u.username, u.role, p.title, p.status
FROM users u
INNER JOIN posts p ON u.id = p.user_id;
