 
 use AdventureWorksDW2012
 
 --Count Kullanýmý
 --Dim product tablosundaki siyah olan ürünlerin  adedini bulalým
 
 select count(EnglishProductName) from DimProduct where
 Color='Black'

 --AVG 

 select AVG(SafetyStockLevel) from DimProduct 
 where
 Color='Black'

 --Sum Fonksiyonu
 
 select Sum(SafetyStockLevel) from  DimProduct
 where
 Color='Black'

