--create database OKYS 
use OKYS
/*
create table Kisiler
(KisiID int identity(1,1) primary key,
KisiAdi varchar(15) not null,
KisiSoyadi varchar(15) not null,
DogumYeri varchar(15) not null,
DogumTarihi date not null,
TCKimlikNo char(11)
)
*/

/*
insert into Kisiler
(KisiAdi,KisiSoyadi,TCKimlikNo,DogumYeri,DogumTarihi) values
('Yaðýz','Yaðlý','12345678911','Ýstanbul','2008-11-11')
*/

--create unique index indTCKimlikNo on Kisiler(TCKimlikNo);

/*
insert into Kisiler
(KisiAdi,KisiSoyadi,TCKimlikNo,DogumYeri,DogumTarihi) values
('Mustafa','Kemal','12345678921','Selanik','1881-05-19'),
('Yavuz','Selim','12345678931','Ýstanbul','1470-10-10'),
('Fatih','Mehmet','12345678941','Ýstanbul','1432-03-30')
*/

--update Kisiler
 --set DogumYeri='Mardin' 
 --where KisiAdi='Yaðýz' and KisiSoyadi='Yaðlý' 
 
 --select*from Kisiler

 --select*from Kisiler where DogumYeri='Ýstanbul'

 --delete from Kisiler where KisiAdi='Yavuz' and KisiSoyadi='Selim'

 --select*from Kisiler

 --select KisiAdi,KisiSoyadi,DogumYeri from Kisiler






