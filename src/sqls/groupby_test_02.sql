/*
 * 请告诉我所有的订单（`order`）中每一种 `status` 的订单的总金额到底是多少。注意是总金额哦。输出
 * 应当包含如下的信息：
 *
 * +─────────+─────────────+
 * | status  | totalPrice  |
 * +─────────+─────────────+
 *
 * 输出应当根据 `status` 进行排序。
 */
SELECT status, SUM(d.quantityOrdered * d.priceEach) as totalPrice
FROM orders o, orderdetails d
WHERE o.orderNumber = d.orderNumber 
GROUP BY status
ORDER BY status