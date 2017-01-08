
select c.companyname from customers c inner join orders o on c.customerid = o.customerid where month(o.orderdate) =1 and year(o.orderdate) = 1998 and c.country <> 'usa';
select sum((UnitPrice*Quantity)*(1-discount)) 'TotalSales' 
from `order details` od inner join orders o on od.orderid = o.orderid where quarter(o.orderdate) = 3 and year(o.orderdate) = 1997;

-- 3
select month(o.OrderDate) = 1997 'Mth', sum((UnitPrice*Quantity)*(1-discount)) 'TotalSales' 
from `order details` od inner join orders o on od.orderid = o.orderid where  year(o.orderdate) = 1997
group by month(o.OrderDate);
-- 5 create a reorder report showing products and supplier cont info
-- UnitsInStock + UnitsOnOrder = current inventory
select s.companyname, s.phone, p.productname, p.unitsinstock, p.unitsonorder, p.reorderlevel 
 from products p inner join suppliers s on p.supplierid = s.supplierid
where UnitsInStock + UnitsOnOrder <= reorderlevel and discontinued = 0;
-- 4
select * from products
where Discontinued = 0 and (QuantityPerUnit like '%jar%');
-- 6
select distinct c.CompanyName, c.phone 
from products p
      inner join `order details` od on p.productid = od.ProductID
      inner join orders o on od.orderid = o.orderid
      inner join customers c on o.CustomerID = c.customerid
 where p.productname like '%crab%' and year(o.orderdate) = 1998;     

-- select od.ProductID  from `order details` od inner join orders o on od.orderid = o.orderid;
-- select c.companyname from customers c inner join orders o on c.customerid = o.customerid;

-- dev.mysqul.com 
-- downlaod community server