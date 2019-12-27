--GROUP BY Kullanimi
--Renklere g�re stok say�lar�

Select color,Sum(SafetyStockLevel) as [stok sayisi] from DimProduct
group by Color

--Renklere g�re �creti en y�ksek degeri ve en d���k de�eri yazd�ral�m

select color ,Min(StandardCost) as D���k,Max(StandardCost) as Y�ksek from  DimProduct
Group by color					--burda renge g�re grupluyor 
order by Min(StandardCost) desc -- ekstra olarak birde azalan s�rada listelesin dedik

--GRUPLANAN DATA'YA kriter nas�l verebiliriz

select color,Min(StandardCost) as D�s�k,Max(StandardCost) as Y�ksek from DimProduct
group by color
having 
Min(StandardCost)>8
order by Min(StandardCost) asc

