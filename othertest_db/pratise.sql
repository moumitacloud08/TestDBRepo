use sakila;
SELECT * FROM sakila.customer;
desc sakila.customer;

SELECT * FROM sakila.customer 
where email = 'PATRICIA.JOHNSON@sakilacustomer.org';

SELECT * FROM sakila.address 
where address_id = 6;

DROP PROCEDURE IF EXISTS update_address;
DELIMITER //
CREATE PROCEDURE update_address(v_phone BIGINT(20),  v_email VARCHAR(70), OUT success INT)
BEGIN 
    DECLARE v_out INT DEFAULT 0;
    DECLARE v_address_id INT DEFAULT 0;
    SELECT address_id INTO v_address_id FROM customer WHERE email=v_email;
    IF v_address_id != 0 THEN
        UPDATE address SET phone=v_phone WHERE address_id=v_address_id;
        SET success=1;
    ELSE
        SET success=0;
    END IF;
END
//
DELIMITER ;

call update_address(838635286611,'PATRICIA.JOHNSON@sakilacustomer.org',@v_out);

select @v_out;