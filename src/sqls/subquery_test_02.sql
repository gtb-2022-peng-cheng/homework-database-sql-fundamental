/*
 * 请告诉我所有订单（order）中的订单明细的最大数目、最小数目和平均数目。结果应当包含三列, 平均数目请四舍五入到个位：
 *
 * +────────────────────+────────────────────+────────────────────+
 * | minOrderItemCount  | maxOrderItemCount  | avgOrderItemCount  |
 * +────────────────────+────────────────────+────────────────────+
 */
SELECT MIN(orders) AS minOrderItemCount,
	MAX(orders) AS maxOrderItemCount,
	ROUND(AVG(orders)) AS avgOrderItemCount 
FROM (
	SELECT COUNT(orderNumber) as orders
	FROM orderdetails
	GROUP BY orderNumber 
) AS t