
--26 Þubat 2026 MS-SQl
--------------------
---Group By,Having
---group by=>bir tabloda ayný datalarý saymak için kullanýlan gruplama yapýsýdýr

use Northwind

select*from Products

select CategoryID,ProductName,UnitPrice from Products order by CategoryID

select CategoryID,COUNT(ProductID) from Products

select Country,City,CompanyName,ContactName from Customers order by Country--91

select Country,COUNT(CustomerID) as 'Müþteri Sayýsý'  from Customers
group by Country order by [Müþteri Sayýsý]

/*
Group By Maddeleri
1- group by ile yazýlan kolonlar select-from arasýnda kullanýlmalýdýr(* çalýþmaz)
2- group by genelde hazýr fonksiyon olarak tanýmlanýr
3- select-from arasýnda yazýlan kolon group by ile beraber kullanýlmasý zorunludur
*/

--en fazla 3 ülke
select top 3 Country,COUNT(CustomerID) as 'Müþteri Sayýsý'  from Customers
group by Country order by [Müþteri Sayýsý] desc
--en az 5 ülke
select top 5 Country,COUNT(CustomerID) as 'Müþteri Sayýsý'  from Customers
group by Country order by [Müþteri Sayýsý] asc

--her bir ülkeye kaç sipariþ gönderildiðini hesaplayýnýz
--ship=> gemi

select ShipCountry,COUNT(OrderID) as 'Müþteri Sayýsý' from Orders
group by ShipCountry order by [Müþteri Sayýsý] 


select*from Orders where ShipCountry='Finland'
select*from Orders where ShipCountry='USA'

select ShipCountry from Orders
select distinct ShipCountry from Orders 

select ShipCountry from Orders
group by ShipCountry

-------------------------
---

select YEAR(OrderDate),COUNT(OrderID) as 'Yýllýk Sayý'from Orders
group by YEAR(OrderDate)



--year=>tarih içinde yýlý verir
--month=>tarih içinde ayý verir
--day=> tarih içinde günü verir

--her ülkeye giden sipariþ sayýsý
select ShipCountry,COUNT(OrderID) from Orders
group by ShipCountry

--- her ülkenin þehirlerindeki sipariþ sayýsý
select ShipCountry,ShipCity,COUNT(OrderID) as 'Sipariþ Sayýsý' from Orders
group by ShipCountry,ShipCity order by ShipCountry,ShipCity

select top 4 year(OrderDate),MONTH(OrderDate),COUNT(OrderID) as 'Sipariþ Sayýsý' from Orders 
where year(OrderDate)=1998   group by  year(OrderDate),MONTH(OrderDate) order by [Sipariþ Sayýsý] desc

--Yaðýz

select*from Categories
select*from Products

select CategoryID,COUNT(ProductID) from Products
group by CategoryID

---subquery,join
--Having=>group by için koþul baðlama iþlemini yapar

select ShipCountry,COUNT(OrderID) as Sayý from Orders
--where COUNT(OrderID)=30 --where tablo kolonlarý için sorgu yapar
group by ShipCountry
having COUNT(OrderID)=30
--tablo kolon sorgu iþlemlerinde where nasýl sorgu yapýyorsa group by ile beraber having te o sorgu iþlemini yapar.
--having ile where burda farklý görevleri üstlenir.
--where olan kolonlarda çalýþýr, having group by ile hesaplama için kullanýlan hazýr fonksiyonla beraber oluþturulan yeni hesaplayýcý yapý için sorgu yapar.

--Yaðýz
