 /*
 * 请告诉我所有的员工（employee）的姓名及其管理者的姓名。所有的姓名都需要按照 `lastName, firstName`
 * 的格式输出，例如 'Bow, Anthony'。如果员工没有管理者，则其管理者的姓名输出为 '(Top Manager)'。
 * 输出需要包含如下信息：
 *
 * +───────────+──────────+
 * | employee  | manager  |
 * +───────────+──────────+
 *
 * 输出结果按照 `manager` 排序，然后按照 `employee` 排序。
 */
SELECT CONCAT(e1.lastName, ", ", e1.firstName) AS employee,
	COALESCE(CONCAT(e2.lastName , ", ", e2.firstName), "(Top Manager)") AS manager
FROM employees e1
LEFT JOIN employees e2 ON e2.employeeNumber = e1.reportsTo
ORDER BY manager, employee