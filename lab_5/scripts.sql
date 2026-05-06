-- ==========================================
-- BASIC LEVEL: Transactions and Indexes
-- ==========================================

-- 1. Демонстрация COMMIT (успешное сохранение)
START TRANSACTION;
UPDATE users SET role = 'admin' WHERE id = 3;
COMMIT;

-- 2. Демонстрация ROLLBACK (отмена изменений)
START TRANSACTION;
UPDATE users SET username = 'WrongName' WHERE id = 3;
ROLLBACK;
-- Проверка (данные не изменятся)
SELECT * FROM users WHERE id = 3;

-- 3. Создание простого индекса
CREATE INDEX idx_username ON users(username);


-- ==========================================
-- ADVANCED LEVEL: Complex Transaction and Optimization
-- ==========================================

-- 4. Комплексная бизнес-транзакция (изменение в двух таблицах)
START TRANSACTION;
-- Уменьшаем остаток любого товара
UPDATE products SET stock = stock - 1 WHERE id > 0 LIMIT 1;
-- Обновляем роль первого попавшегося пользователя
UPDATE users SET role = 'member' WHERE id > 0 LIMIT 1;
COMMIT;

-- 5. Запросы для анализа через EXPLAIN
-- До оптимизации
EXPLAIN SELECT * FROM users WHERE username = 'test';

-- После создания индекса (повторный запуск того же запроса)
EXPLAIN SELECT * FROM users WHERE username = 'test';
