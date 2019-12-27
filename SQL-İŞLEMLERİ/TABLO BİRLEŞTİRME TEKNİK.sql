
--INNER JOIN

select * from DimProduct
where
ProductSubcategoryKey is not null

select *from  DimProductSubcategory 
where
ProductSubcategoryKey=14

--Genel Kullanim
--select  kolon veya kolonlar from Tablo1 inner join Tablo2 on
--Tablo1.Key=Tablo2.key

Select 
DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP
inner join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey=DPS.ProductSubcategoryKey


--LEFT JOIN
--sol tablodaki t�m de�erler gelir sa� tabloda bu de�erlere uymayan de�erler null olarak gelecektir

select
DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP left join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey=DPS.ProductSubcategoryKey

--RIGHT JOIN

select
DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as Dp  right join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey=DPS.ProductSubcategoryKey

--FULL JOIN 
-- olanlar olanlar ile olmayanlar null gelecek right ve left birle�imi

select 
DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP full join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey=DPS.ProductSubcategoryKey 