-- 코드를 입력하세요
SELECT
    YEAR(O.SALES_DATE) AS YEAR,
    MONTH(O.SALES_DATE) AS MONTH,
    COUNT(DISTINCT O.USER_ID) AS PUCHASED_USERS,
    ROUND(COUNT(DISTINCT O.USER_ID) / (SELECT COUNT(USER_ID) FROM USER_INFO WHERE YEAR(JOINED) = '2021'),1)
FROM (
    SELECT
        USER_ID,
        JOINED
    FROM USER_INFO U
    WHERE YEAR(JOINED) = '2021') U
INNER JOIN ONLINE_SALE O
ON O.USER_ID = U.USER_ID
GROUP BY 1, 2
ORDER BY 1, 2;