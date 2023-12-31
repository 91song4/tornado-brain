-- 코드를 입력하세요
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    SUM(AMOUNT)*PRICE AS TOTAL_SALES
FROM FOOD_ORDER
NATURAL JOIN FOOD_PRODUCT
WHERE DATE_FORMAT(PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY PRODUCT_ID
ORDER BY 3 DESC, 1