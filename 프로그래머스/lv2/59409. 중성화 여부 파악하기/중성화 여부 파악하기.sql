-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    NAME,
    CASE SEX_UPON_INTAKE LIKE 'In%'
        WHEN 0
        THEN 'O'
        ELSE 'X'
    END
FROM ANIMAL_INS
ORDER BY 1;