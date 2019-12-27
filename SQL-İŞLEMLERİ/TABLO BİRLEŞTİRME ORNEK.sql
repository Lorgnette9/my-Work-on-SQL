
--Ana Kategori Ad�(DimProdcutCategory'de)  - Alt kategori Ad� -    Renk - 'den ka� tane oldu�unu bulal�m ->Toplam Stok Adedi

select 
DPC.EnglishProductCategoryName as [Ana Kategori Ad�],
DPS.EnglishProductSubcategoryName as [alt kategori Ad�],
DP.Color as Renk,
SUM(DP.ProductKey) as [Toplam Adet],
AVG(DP.SafetyStockLevel) as [Ortalama Stok Adedi]
from
DimProduct as DP inner join DimProductSubcategory as DPS
on
DP.ProductSubcategoryKey =DPS.ProductSubcategoryKey
inner join DimProductCategory as DPC 
on DPS.ProductCategoryKey=DPC.ProductCategoryKey
group by DPC.EnglishProductCategoryName, DPS.EnglishProductSubcategoryName, DP.Color	 --datay� gruplad�k ki bu �r�nlerden ka� tane var onu g�r�yoruz


----ORNEK 2

select 
DP.EnglishProductName,
DC.FirstName,
DC.LastName,
FIS.TotalProductCost
from FactInternetSales as FIS
inner join DimProduct as DP
on FIS.ProductKey=DP.ProductKey
inner join DimCustomer as DC  
on FIS.CustomerKey=DC.CustomerKey
group by DC.FirstName,DP.EnglishProductName,DC.LastName,FIS.TotalProductCost		