CREATE OR REPLACE VIEW v_UserActivity AS
SELECT u.username, u.role, p.title, p.status
FROM users u
JOIN posts p ON u.id = p.user_id;
