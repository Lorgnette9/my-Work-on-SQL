

-- GENEL KULLANIM
--IF
--begin
--TSQL Kodlarý
--end
--else
--begin
--TSQL Kodlarý
--end


declare @KullaniciAdi nvarchar(20),@sifre nvarchar(20)
set  @KullaniciAdi='Demo1'
set @sifre='Demo'

if @KullaniciAdi ='Demo' and @sifre='Demo'
begin
	print ' Kullanici Giris Ýslemi Basarili'
end

else
begin
	print 'Kullanici Girisi Basarisiz'
end

---------------------------------------
--Ornek2


declare  @ToplamKayitSayisi int
select @ToplamKayitSayisi=COUNT(*) from DimProduct

if @ToplamKayitSayisi <= 100
begin
	print ' Toplam Sayi 100 den kucuk veya eþit'
end
else if @ToplamKayitSayisi >=100 and @ToplamKayitSayisi<=200
begin
	print 'Toplam Sayi 100 - 200 arasýndadýr'
end
else
begin
	print 'Toplam Sayi 200 den büyüktür'
end