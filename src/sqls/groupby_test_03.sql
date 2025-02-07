/*
 * 请告诉我每年的订单（`order`）总额。其结果应当包含如下的信息：
 *
 * +───────+─────────────+
 * | year  | totalPrice  |
 * +───────+─────────────+
 *
 * 并且结果应当按照 `year` 排序。
 *
 * 提示：你可以使用 `YEAR` 聚合函数从日期（`orderDate`）中获得年份的信息。 
 */
SELECT YEAR(o.orderDate) AS year, SUM(d.quantityOrdered * d.priceEach) as totalPrice
FROM orders o, orderdetails d
WHERE o.orderNumber = d.orderNumber 
GROUP BY year
ORDER BY year