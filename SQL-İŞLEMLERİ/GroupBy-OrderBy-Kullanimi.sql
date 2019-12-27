--GROUP BY Kullanimi
--Renklere göre stok sayýlarý

Select color,Sum(SafetyStockLevel) as [stok sayisi] from DimProduct
group by Color

--Renklere göre ücreti en yüksek degeri ve en düþük deðeri yazdýralým

select color ,Min(StandardCost) as Düþük,Max(StandardCost) as Yüksek from  DimProduct
Group by color					--burda renge göre grupluyor 
order by Min(StandardCost) desc -- ekstra olarak birde azalan sýrada listelesin dedik

--GRUPLANAN DATA'YA kriter nasýl verebiliriz

select color,Min(StandardCost) as Düsük,Max(StandardCost) as Yüksek from DimProduct
group by color
having 
Min(StandardCost)>8
order by Min(StandardCost) asc

