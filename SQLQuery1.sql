
SELECT *FROM HumanResource.Employee
SELECT getdate()
SELECT Name,Starttime,endtime=dateadd(hh,10,starttime) FROM HumanResource.Employee

SELECT round(189.5677,1)

SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID,'OrderID',TotalDue FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC

SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID,'OrderID',TotalDue FROM Sales.SalesOrderHeader
WHERE TaxAmt<2000
ORDER BY TaxAmt 

SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID,'OrderID',TotalDue FROM Sales.SalesOrderHeader
ORDER BY TotalDue
SELECT * FROM Sales.SalesTerritory
WHERE  NAME LIKE'Dollar'
SELECT * FROM Sales.SalesTerritory
WHERE  NAME LIKE'%N%'

SELECT * FROM Sales.SalesPerson

SELECT TOP 3*  FROM Sales.SalesPerson  
ORDER BY Bonus DESC


SELECT * FROM Sales.Store
WHERE  NAME LIKE'%BIKE%'

SELECT * FROM Sales.CreditCard
SELECT DISTINCT Cardtype FROM Sales.CreditCard


SELECT * FROM HumanResources.Employee
SELECT BusinessEntityID,LoginID,JobTitle FROM HumanResources.Employee ORDER BY BusinessEntityID,LoginID,JobTitle
OFFSET 5 Rows FETCH NEXT 10 Row Only


SELECT * FROM Sales.SalesOrderDetail

SELECT 'Max Rate'=max( UnitPrice ) FROM Sales.SalesOrderDetail

SELECT 'Min Rate'=min( UnitPrice ) FROM Sales.SalesOrderDetail

SELECT 'Average Rate'=Avg( UnitPrice ) FROM Sales.SalesOrderDetail
SELECT 'TotalValue'=Sum(UnitPrice ) FROM Sales.SalesOrderDetail


SELECT * FROM Sales.SalesOrderDetail
SELECT Sum(LineTotal) FROM Sales.SalesOrderDetail
















 

