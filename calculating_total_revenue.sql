SELECT
	o.orderID,
	SUM(o.quantity * p.price) AS totalRevenue
FROM 
	orders o
LEFT JOIN 
	products p ON p.productID = o.productID
GROUP BY 
	o.orderID