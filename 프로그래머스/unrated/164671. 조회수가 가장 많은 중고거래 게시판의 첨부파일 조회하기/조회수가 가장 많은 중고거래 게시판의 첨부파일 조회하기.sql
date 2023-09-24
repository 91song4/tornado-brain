-- 코드를 입력하세요
SELECT 
    CONCAT('/home/grep/src/', 
        CONCAT(BOARD_ID,
            CONCAT('/',
                CONCAT(FILE_ID, 
                    CONCAT(FILE_NAME, FILE_EXT)
                )
            )
        )
    ) AS FILE_PATH
FROM USED_GOODS_FILE
NATURAL JOIN (SELECT
    BOARD_ID
FROM USED_GOODS_BOARD
ORDER BY VIEWS DESC
LIMIT 1) UB
ORDER BY FILE_ID DESC;