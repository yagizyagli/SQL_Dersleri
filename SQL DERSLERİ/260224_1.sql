


use OkulDB
---Yaðýz
select*from Sýnýflar order by SýnýfSubesi

-- 
select top 5
OgrenciAdi as Ad,
OgrenciSoyadi as Soyad,
DogumTarihi as [Doðum Tarihi],
OgrenciTC as TC,
Adres 
from Ogrenciler where Cinsiyeti='Kadýn' order by DogumTarihi desc

select
OgrenciAdi,OgrenciSoyadi,OgrenciTC,DogumTarihi,Adres
from Ogrenciler where OgrenciSoyadi like'%d%' and Cinsiyeti='Erkek' and OgrenciTC is not null 

select
VeliAdi,VeliSoyadi,Cinsiyet,VeliTC,Telefon,Adres
from Veliler where Cinsiyet='Erkek' and VeliTC!='' and Telefon!='' and Telefon is not null and VeliTC is not null
--Bir okuldaki öðrencileri babalarýna mesaj atýlacaktýr. Bu mesaj için TC,Telefon numarasý gereklidir. Bu þartlara göre veritabanýndan Vli adý,soyadý, Cinsiyet, TC, telefon  ve adres bilgilerini getiren scripti(SQL kodu) kodlayýnýz?




--Yaðýz





