

-- GENEL KULLANIM
--IF
--begin
--TSQL Kodlar�
--end
--else
--begin
--TSQL Kodlar�
--end


declare @KullaniciAdi nvarchar(20),@sifre nvarchar(20)
set  @KullaniciAdi='Demo1'
set @sifre='Demo'

if @KullaniciAdi ='Demo' and @sifre='Demo'
begin
	print ' Kullanici Giris �slemi Basarili'
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
	print ' Toplam Sayi 100 den kucuk veya e�it'
end
else if @ToplamKayitSayisi >=100 and @ToplamKayitSayisi<=200
begin
	print 'Toplam Sayi 100 - 200 aras�ndad�r'
end
else
begin
	print 'Toplam Sayi 200 den b�y�kt�r'
end