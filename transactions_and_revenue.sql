SELECT

products.productName AS productName,
products.category AS productCategory,
SUM(Quantity) AS totalQuantity,
COUNT(*) AS totalTransactions,
SUM(Quantity * Price) AS totalRevenue

FROM transactions
LEFT JOIN products ON products.productID = transactions.productID

GROUP BY productID, productName, productCategory
ORDER BY TotalRevenue DESC
