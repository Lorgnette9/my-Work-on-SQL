
--KULLANICI TANIMLI FONKS�YON TABLE

--Geriye sorgu d�nd�ren fonksiyon

create function IDPRODUCT
(

@ID int

)
returns table	
as
return ( select * from DimProduct where ProductKey=@ID)


select *from dbo.IDPRODUCT(1)




--Geriye tablo de�i�keni dond�ren fonksiyonlar

--  hi�bir parametre almad� i�erde 1 tane �zel tablo olu�turdum ,bu tablo database'imde yok
--	function cal��ma zaman�nda bu de�erleri ekledi ve bana sundu

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