CREATE TRIGGER tr_BeforeUpdate
BEFORE UPDATE ON users
FOR EACH ROW
SET NEW.username = UPPER(NEW.username);
