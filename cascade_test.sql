-- Проверка каскадного обновления и удаления.
-- Каждый тест отменяется через ROLLBACK, исходные данные сохраняются.

-- 1. Проверка ON UPDATE CASCADE
BEGIN;
UPDATE kafedry
SET nomer_kafedry = 100
WHERE nomer_kafedry = 1;

SELECT *
FROM prepodavateli
WHERE nomer_kafedry = 100;
ROLLBACK;

-- 2. Проверка ON DELETE CASCADE
BEGIN;
DELETE FROM kafedry
WHERE nomer_kafedry = 1;

SELECT *
FROM prepodavateli
WHERE nomer_kafedry = 1;
ROLLBACK;
