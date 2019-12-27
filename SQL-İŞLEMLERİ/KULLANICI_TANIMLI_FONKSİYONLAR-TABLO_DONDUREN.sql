
--KULLANICI TANIMLI FONKSÝYON TABLE

--Geriye sorgu döndüren fonksiyon

create function IDPRODUCT
(

@ID int

)
returns table	
as
return ( select * from DimProduct where ProductKey=@ID)


select *from dbo.IDPRODUCT(1)




--Geriye tablo deðiþkeni dondüren fonksiyonlar

--  hiçbir parametre almadý içerde 1 tane özel tablo oluþturdum ,bu tablo database'imde yok
--	function calýþma zamanýnda bu deðerleri ekledi ve bana sundu

create function Personel
()
returns @PersonelTablo table
(
ID int,
Isim nvarchar(20),
SoyIsim nvarchar(20)
)
as
begin
insert into @PersonelTablo (ID,Isim,SoyIsim) values(1,' QWERTY','TREW ')
return
end

select *from dbo.Personel()