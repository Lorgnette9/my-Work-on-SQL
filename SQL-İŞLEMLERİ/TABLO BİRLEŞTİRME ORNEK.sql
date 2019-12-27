
--Ana Kategori Adý(DimProdcutCategory'de)  - Alt kategori Adý -    Renk - 'den kaç tane olduðunu bulalým ->Toplam Stok Adedi

select 
DPC.EnglishProductCategoryName as [Ana Kategori Adý],
DPS.EnglishProductSubcategoryName as [alt kategori Adý],
DP.Color as Renk,
SUM(DP.ProductKey) as [Toplam Adet],
AVG(DP.SafetyStockLevel) as [Ortalama Stok Adedi]
from
DimProduct as DP inner join DimProductSubcategory as DPS
on
DP.ProductSubcategoryKey =DPS.ProductSubcategoryKey
inner join DimProductCategory as DPC 
on DPS.ProductCategoryKey=DPC.ProductCategoryKey
group by DPC.EnglishProductCategoryName, DPS.EnglishProductSubcategoryName, DP.Color	 --datayý grupladýk ki bu ürünlerden kaç tane var onu görüyoruz


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