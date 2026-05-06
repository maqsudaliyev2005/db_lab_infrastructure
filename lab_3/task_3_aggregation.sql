-- Агрегация: считаем посты каждого юзера
SELECT user_id, COUNT(*) as total_posts
FROM posts
GROUP BY user_id
HAVING total_posts > 0;
