 
 use AdventureWorksDW2012
 
 --Count Kullan�m�
 --Dim product tablosundaki siyah olan �r�nlerin  adedini bulal�m
 
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

