
---27 Þubat 2026 

--Subquery
--Ýç içe select ya da sorgulayýcý yapýda sql scriptleri kullanmak

--subquery=alt sorgu
use Northwind

select*from Products
select*from Categories
select*from [Order Details]

select
CategoryID,
(select CategoryName from Categories where Categories.CategoryID=Products.CategoryID) as 'Kategori Adý',
ProductID,ProductName,UnitPrice,UnitsInStock
from Products

/*
1-Subquery ile tanýmlanan script sadece bir kolon çaðýrýlabilir
2-subquery ile ana sorguyu where ile ortak kolonlar eþitlenmeli ve bu eþitlenme subquery(iç select) ile yapýlmalý
3- 2.maddenin devamý olarak iç select ile tanýmlanan tablo PK(Primary Key) kolon olmalýdýr
*/


--birden fazla tabloyu subquery olarak kullanmak 

select*from Products
select*from Categories
select*from Suppliers

select
(select s.CompanyName  from Suppliers as s where s.SupplierID=p.SupplierID)as 'Tedarikçi Firma',
(select s.ContactName from Suppliers as s where s.SupplierID=p.SupplierID) as 'Tedarikçi Firma Yetkilisi',
(select c.CategoryName from Categories as c where c.CategoryID=p.CategoryID) as 'Kategori Adý',
p.ProductName,p.UnitPrice,p.UnitsInStock
from Products as p

--
select 
(select e.FirstName+SPACE(1)+e.LastName from Employees as e where e.EmployeeID=o.EmployeeID)as 'Personel Adý ve Soyadý', 
--iç select ile operatörler kullanarak birden fazla kolonu tek kolon gibi göstermek þartýyla kullanabilirsiniz
o.OrderDate as 'Sipariþ ',o.Freight as 'Kargo'
from Orders as o
--iç select ile geçmiþ konulardaki group by,order by,where,like,... bütün iþlemleri yaptýrabilirsiniz

select
(select e.FirstName+SPACE(1)+e.LastName from Employees as e where e.EmployeeID=o.EmployeeID)as 'Personel Adý ve Soyadý',
COUNT(OrderID) as 'Sipariþ Sayýsý'
from Orders as o --Order tablosu ana select ama iç select te Employees tablosu var
-- where -- where ile de bu alanda varsa kolon koþullarý yazabilirsiniz
group by o.EmployeeID having COUNT(OrderID)>100
order by [Sipariþ Sayýsý]
-- group by kullanýrken select ile form arasýnda yazýlan kolon,script group by ile beraber yazýlmalýdýr(ZORUNLULUK)


--her bir müþterinin(customer) kaç sipariþi olduðunu Firmaadý, Firma yetkili ad-soyad, þehir ve ülke þeklinde hesaplayýnýz
select
(select c.CustomerID from Customers as c where c.CustomerID=o.CustomerID) as 'Müþteri ID',
(select c.CompanyName from Customers as c where c.CustomerID=o.CustomerID) as 'Þirket Adý',
(select c.ContactName from Customers as c where c.CustomerID=o.CustomerID) as 'Ýletiþim',
(select c.City from Customers as c where c.CustomerID=o.CustomerID) as 'Þehir',
(select c.Country from Customers as c where c.CustomerID=o.CustomerID) as 'Ülke',
COUNT(OrderID) as 'Sipariþ Sayýsý'
from Orders as o
group by o.CustomerID
order by [Sipariþ Sayýsý]

--PK olan kolon TABLO ÝÇ select OLMAK ZORUNDADIR
--CustomerId customers tablosu için PK dýr,o nedenle customers tablosu iç select olmalýdýr

---YAÐIZ