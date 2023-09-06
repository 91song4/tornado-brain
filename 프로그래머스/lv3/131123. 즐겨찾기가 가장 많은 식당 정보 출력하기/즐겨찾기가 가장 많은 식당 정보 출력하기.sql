-- 코드를 입력하세요
SELECT
    RI.FOOD_TYPE,
    RI.REST_ID,
    RI.REST_NAME,
    RI.FAVORITES
FROM REST_INFO RI
INNER JOIN (
    SELECT
    REST_ID,
    MAX(FAVORITES)
        OVER(PARTITION BY FOOD_TYPE) FAVORITES
FROM REST_INFO) SJRI
ON RI.REST_ID = SJRI.REST_ID
AND RI.FAVORITES = SJRI.FAVORITES
ORDER BY 1 DESC