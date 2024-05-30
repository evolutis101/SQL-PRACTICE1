/* 
created by Elena Montalvo
made 05/28/2024

CASE STATEMENT SAMPLE  
IF THEM LOGIC WITH CASE 
*/ 


SELECT 
InvoiceDate,
BillingAddress,
BillingCity,
total, 

CASE
WHEN total < 2.00 THEN 'BASELINE PURCHASE' 
WHEN total BETWEEN 2.00 and 6.99 then 'LOW PURCHASE' 
WHEN total BETWEEN 7.00 and 15.00 then 'LOW PURCHASE' 
ELSE 'TOP PERFORMANCE' 
END AS PurchaseType

FROM 
Invoice  

ORDER BY 
BillingCity
