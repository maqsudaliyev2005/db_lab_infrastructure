DELIMITER //
CREATE PROCEDURE sp_AddMember(IN p_user VARCHAR(50))
BEGIN
    INSERT INTO users (username, role) VALUES (p_user, 'member');
END //
DELIMITER ;
