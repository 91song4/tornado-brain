-- 코드를 입력하세요
SELECT
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
GROUP BY 1, 2
HAVING COUNT(*) > 1
ORDER BY 1, 2 DESC