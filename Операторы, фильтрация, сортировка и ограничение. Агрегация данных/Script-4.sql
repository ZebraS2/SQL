-- Используем базу данных
USE vk;
-- 1
-- Заполняем created_at и updated_at текущими датой и временем
UPDATE users SET created_at = NOW();


-- 2


   
 
   
ALTER TABLE users
    CHANGE COLUMN `created_at` `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    CHANGE COLUMN `updated_at` `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- 3
   


-- Перечисляем данные
SELECT value FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;





-- 1

SELECT ROUND(avg(TIMESTAMPDIFF(YEAR, birthday, NOW()))) FROM users;


-- 2

-- Перечисляем дни недели
SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday, 6, 10))) AS day_of_week,
    COUNT(*) AS birthdays
FROM profiles
GROUP BY day_of_week
ORDER BY birthdays DESC;











