WITH MaxTotalDue
    AS(
        select SalesLT.SalesOrderHeader.SalesOrderID,
               SalesLT.SalesOrderHeader.TotalDue
        from SalesLT.SalesOrderHeader
    )
SELECT TOP 1 *
from MaxTotalDue
ORDER BY MaxTotalDue.TotalDue DESC                                                                                       