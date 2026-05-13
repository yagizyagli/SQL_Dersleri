
---Yaðýz

--20 þubat 2026 cuma 

use Northwind

select*from Customers


select*from Customers where Country like '%swe%' and City like '%br%' 

select*from Products

select*from Products where ProductName like'__ic%' and  UnitsInStock>=0 and UnitsInStock<=10
select*from Products where ProductName like'__ic%' and  UnitsInStock between 0 and 10
select
ProductName 'Ýsim',
UnitsInStock 'Stok',
UnitPrice    [Fiyat]
from Products 

---Genel Tekrar Sorularý
--Aliases,kolon adý,select,from,Tablo Adý,where(koþul kelimesi),top,Operatörler(<,>,<=,>=,<>,!=,=),between,and,or,in,not in,is null,is not null,order by(sýralama),like(% yeri,_konumu),decs,acs

select*from Products

select
ProductName as Ad,
UnitsInStock as Stok,
UnitPrice as Fiyat,
QuantityPerUnit as [Birim Tanýmý]
from Products where  UnitPrice between  15 and 25 order by  UnitPrice asc

select*from Products


select
ProductName as Ad,
UnitPrice as[Birim Fiyatý],
UnitsInStock as Stok,
Discontinued as Üretimdemi,
QuantityPerUnit as [Birim Tanýmý]
from Products where  UnitsInStock>100  order by ProductName asc

select*from Products order by UnitPrice -- ürünler fiyata göre küçükten büyüðe sýralanýr
select*from Products order by UnitsInStock
select*from Orders order by Freight

select*from Customers order by CompanyName
select*from Products order by UnitPrice

--top kullanýmý

--en düþük fiyata sahip  5 ürün
select top 5*from Products order by UnitPrice

--- en yüksek fiyata sahip 5 ürün
select top 5*from Products order by UnitPrice desc

select top 3
FirstName Ad,
LastName Soyad,
BirthDate [Doðum Tarihi],
Address Adres,
City  Þehir,
Country Ülke
from Employees order by BirthDate desc

SUM
AVG
DELETE
YEAR
MONTH
DAY
UPDATE
MIN
MAX

--Yaðýz

 















