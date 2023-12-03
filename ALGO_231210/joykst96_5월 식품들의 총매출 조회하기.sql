-- 코드를 입력하세요
SELECT P.PRODUCT_ID, P.PRODUCT_NAME, SUM(P.PRICE * O.AMOUNT) AS TOTAL_SALES
  FROM FOOD_PRODUCT P
       JOIN FOOD_ORDER O
         ON P.PRODUCT_ID = O.PRODUCT_ID
 WHERE YEAR(O.PRODUCE_DATE) = 2022 AND MONTH(O.PRODUCE_DATE) = 5
 GROUP BY PRODUCT_ID
 ORDER BY 3 DESC, 1 ASC