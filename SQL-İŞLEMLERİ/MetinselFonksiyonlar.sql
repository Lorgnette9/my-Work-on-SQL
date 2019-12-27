--Upper

select UPPER(EnglishProductName) from DimProduct


--Lower

select LOWER(EnglishProductName) from DimProduct

--Len 
-- metnin kaç karekter olduðunu verir

select EnglishProductName ,Len(EnglishProductName) as Uzunluk  from DimProduct

--DataLength

Select EnglishProductName,Len(EnglishProductName) as Uzunluk, DATALENGTH(EnglishProductName) as ByteUzunluk from DimProduct

--CONCAT 
-- string deðerleri tek bir kolon içerisinde görmemizi saðlar

select ProductAlternateKey,EnglishProductName,EnglishDescription,
ProductAlternateKey+','+ EnglishProductName +',' + EnglishDescription  as Concat1 
from DimProduct
where 
EnglishDescription is not null		--description'larý null olmayanlarý getirttik


select ProductAlternateKey,EnglishProductName,EnglishDescription,
CONCAT(ProductAlternateKey,' ',EnglishProductName,' ',EnglishDescription) as Concat2
from DimProduct
where 
EnglishDescription is not null 

--LEFT(kelimenin soldan belirtilen adedi kadarýný alýr)
select EnglishProductName,LEFT(EnglishProductName,4) as LeftKullanim from DimProduct

--RIGHT
select EnglishProductName,RIGHT(EnglishProductName,4) as RightKullanim from DimProduct

--AYNI ANDA
select EnglishProductName,LEFT(EnglishProductName,4) as LeftKullanim ,RIGHT(EnglishProductName,4) as RightKullanim from  DimProduct

--Substring Kullanimi
 select EnglishProductName,SUBSTRING(EnglishProductName,5,12) as IstenilenKadar from DimProduct

 --RIGHT VE SUBSTRING FONKSÝYONLARININ iç içe kullanýmý
 select EnglishProductName,LEFT(Substring(EnglishProductName,3,6),4) as IcIce from DimProduct


