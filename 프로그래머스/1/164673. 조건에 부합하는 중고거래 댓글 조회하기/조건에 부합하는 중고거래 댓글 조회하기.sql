# -- 코드를 입력하세요
# SELECT BOARD.TITLE, BOARD.BOARD_ID, REPLY.REPLY_ID, REPLY.WRITER_ID, REPLY.CONTENTS, DATE_FORMAT(REPLY.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
# FROM USED_GOODS_BOARD AS BOARD, USED_GOODS_REPLY AS REPLY
# WHERE BOARD.BOARD_ID = REPLY.BOARD_ID AND DATE_FORMAT(BOARD.CREATED_DATE, '%Y-%m') = '2022-10'
# ORDER BY REPLY.CREATED_DATE, BOARD.TITLE

SELECT B.TITLE, B.BOARD_ID, R.REPLY_ID, R.WRITER_ID, R.CONTENTS, DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD B, USED_GOODS_REPLY R
WHERE B.BOARD_ID = R.BOARD_ID AND YEAR(B.CREATED_DATE) = 2022 AND MONTH(B.CREATED_DATE) = 10
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC