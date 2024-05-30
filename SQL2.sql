/* 
created by Elena Montalvo
made 05/28/2024 
*/ 
-- % i dont care what comes next 

SELECT 
InvoiceDate,
BillingAddress,
BillingCity,
total 

FROM 
Invoice 

WHERE 
-- NUMERIC 
-- total BETWEEN  1.98 and 5 
-- you could also say total in (1.98, 3.96) 

-- STRING 
-- REMEMBER WHEN SERCHING FOR TEXT YOU NEED SINGLE QUOTATTION ''
-- BillingCity = 'Brussels' "=" symbol is used when we are looking for exact values 
-- BillingCity IN ('Brussels', 'Orlando', 'Paris')
-- BillingCity like '%B%' 


-- DATE 
--InvoiceDate = '2010-05-22 00:00:00' -- THEY ARE TOO MANY FILED TO TYPE THEY ARE FUCTIONS AVAILABLE THAT COULD BE USED 
--DATE(InvoiceDate) > '2010-05-22' and total < 3.00

-- PEMDAS 
-- AND AND OR ARE THE SAME AS ANY LOGICAL OPERATOR 
total < 1.98 and (BillingCity like 'P%' OR BillingCity like 'D%')
order by 
InvoiceDate 