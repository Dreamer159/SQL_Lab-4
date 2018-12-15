 WITH Sales (Year, Month, City, Sum_of_sales)
    AS(
        select YEAR(SalesLT.SalesOrderHeader.DueDate), 
        MONTH(SalesLT.SalesOrderHeader.DueDate),
        SalesLt.Address.City,
        Sum(SalesLT.SalesOrderHeader.TotalDue)
        from SalesLT.SalesOrderHeader inner join SalesLt.Address ON 
        SalesLT.SalesOrderHeader.BillToAddressID =
        SalesLt.Address.AddressID
        where YEAR(SalesLT.SalesOrderHeader.DueDate) = 2012
        GROUP BY SalesLt.Address.City, SalesLT.SalesOrderHeader.TotalDue,
                 SalesLT.SalesOrderHeader.DueDate
    )
SELECT *
from Sales s                                                                  
order by s.Month