/*
 * 请告诉我所有被取消（'Cancelled'）的订单以及其总金额。查询结果应当包含如下的内容：
 *
 * +──────────────+─────────────+───────────────+
 * | orderNumber  | totalPrice  | detailsCount  |
 * +──────────────+─────────────+───────────────+
 *
 * 其中，orderNumber 是订单编号，totalPrice 是订单的总金额而 detailsCount 是每一个订单
 * 包含的 `orderdetails` 的数目。
 *
 * 结果应当按照 `orderNumber` 排序。
 */
SELECT orderNumber, totalPrice, detailsCount
FROM (
	SELECT o.orderNumber,
		SUM(d.quantityOrdered * d.priceEach) AS totalPrice,
		COUNT(*) AS detailsCount
	FROM orders o, orderdetails d
	WHERE o.orderNumber = d.orderNumber
		AND o.status = "Cancelled"
	GROUP BY d.orderNumber
) as t
ORDER BY orderNumber;