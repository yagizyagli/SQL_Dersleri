use Northwind

select*from Customers where Country='Germany' and City='Berlin'
select*from Customers where Country='Germany' or Country='Mexico' or City='Sao Paulo'
----
select*from Customers where Country in('Germany','Mexico','Sao Paulo')

select*from Customers where Country not in('Germany','Mexico','Sao Paulo')

--is null is not null

select*from Customers where Region=''

select*from Customers where Region is null

select*from Customers where Region is not null

select*from Products

select*from Products where UnitsInStock>=10 and UnitsInStock<=15 order by UnitsInStock
select*from Products where UnitsInStock>=10 and UnitsInStock<=15 
select*from Products where UnitsInStock between 10 and 15

select*from Orders where OrderDate between '01.01.1996' and '12.31.1996'
--like=arama yapmak için kullanýlýr
select*from Customers where ContactName like '%Maria%'

select*from Customers where ContactName = 'Maria'--like ile % iþareti olmadan ayný anlama gelir

select*from Customers where ContactName like 'Mar%'--ilk üç harfi mar olanlarý getirir

select*from Orders where OrderDate like '%1996%'

select*from Customers where ContactName like '%Mar'--son 3 harfi mar olanlarý getirir

--arama içinde_kullanýlmasý

select*from Products where ProductName like 'c_a%'--her bir alt tire bir bilinmeyen karaktere denk gelir

select*from Products where ProductName like '_e_t%' -- 1. ve 3. harfi bilinmeyen 2. ve 4. harfi bilinen datalarýn getirilmesi

--like için soru çözümü
--devam konular
--hazýr fonksiyonlar









