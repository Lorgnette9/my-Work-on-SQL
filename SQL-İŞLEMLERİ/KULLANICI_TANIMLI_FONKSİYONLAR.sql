
--KULLANICI TANIMLI FONKSÝYONLAR

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
--Fonksiyon içerisini kodlama 
--end

---------------------

alter function UrunIDIsimAl			--create ile oluþturduydum sonra düzelttim drop ile de silebiliriz
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
set @BulunanIsim ='Aradýðýnýz ID degerine sahip ürün bilgisi Bulunamadi !!!'
end

return @BulunanIsim
end

--fonksiyon oluþtu kullanalým þimdi

select dbo.UrunIdIsimAl(1)  --- ilgili ID geldi

select dbo.UrunIdIsimAl(2341)	--yoktur bu ID