/*
Рассчитайте среднюю цену товаров в таблице products, в названиях которых присутствуют слова «чай» и «кофе». 
Любым известным способом исключите из расчёта «иван-чай» и «чайный гриб». 
Среднюю цену округлите до двух знаков после запятой. 
Столбец с полученным значением назовите avg_price.
Поле в результирующей таблице: avg_price
*/
SELECT
  ROUND(AVG(price), 2) AS avg_price
FROM
  products
WHERE
  (
    name LIKE '%чай%'
    OR name LIKE '%кофе%'
  )
  AND (
    name NOT LIKE '%иван-чай%'
    AND name NOT LIKE '%чайный гриб%'
  );