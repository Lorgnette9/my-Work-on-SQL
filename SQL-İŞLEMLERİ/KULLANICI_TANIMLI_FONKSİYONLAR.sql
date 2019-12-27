
--KULLANICI TANIMLI FONKS�YONLAR

-- 1_Scaler : Tek deger donduren fonksiyonalr

-- 2_Table :tablo donduren fonksiyon


-- Genel Kullanimi 

--create function FonksiyonAdi
--(
--	parametreler....
--)
--returns tip
--as 
--begin
--Fonksiyon i�erisini kodlama 
--end

---------------------

alter function UrunIDIsimAl			--create ile olu�turduydum sonra d�zelttim drop ile de silebiliriz
(
	@ID int
)
returns nvarchar(200)
as
begin

declare @BulunanIsim nvarchar(200)
if(Exists(select * from DimProduct where ProductKey=@ID))
begin
select
@BulunanIsim=EnglishProductName
from DimProduct where ProductKey=@ID
end
else
begin
set @BulunanIsim ='Arad���n�z ID degerine sahip �r�n bilgisi Bulunamadi !!!'
end

return @BulunanIsim
end

--fonksiyon olu�tu kullanal�m �imdi

select dbo.UrunIdIsimAl(1)  --- ilgili ID geldi

select dbo.UrunIdIsimAl(2341)	--yoktur bu ID