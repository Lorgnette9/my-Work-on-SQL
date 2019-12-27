
--TSQL deðiþken oluþturma  ve kullanýmý

--declare : yeni bir deðiþken oluþturma iþleminde bu komut kullanýlýr

--declare @degiskenAdi nvarchar(10):
--set @degiskenAdi ='Cengiz'

declare @TamIsim nvarchar(30)
set @TamIsim='Severus Snape'
print @TamIsim

declare @TamIsim2 nvarchar(39)='Ron Weasley'
print @TamIsim2

declare @ToplamKayitSayisi int
select @ToplamKayitSayisi=count(*) from DimProduct
print @ToplamKayitSayisi

