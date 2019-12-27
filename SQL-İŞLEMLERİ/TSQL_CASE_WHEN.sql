
-----CASE WHEN KULLANIMI

-- select case kolonAdi 
--when 'Red' then 'K�rm�z�'
--when 'Red' then 'K�rm�z�'
--when 'Red' then 'K�rm�z�'
--when 'Red' then 'K�rm�z�'
--else
--end

select EnglishProductName,Color  from  DimProduct

select Distinct Color  from  DimProduct			-- 10 tane renk varm�� 

--Case when kullanarak t�rk�elestirelim

select 
EnglishProductName,
(case Color
	when 'Black' then 'Siyah'
	when 'Blue' then 'Mavi'
	when 'Grey' then 'Gri'
	When 'multi' then 'CokRenkli'
	when 'NA' then 'Renksiz'
	when 'Silver' then 'G�m��'
	when 'silver/Black' then 'G�m��/Siyah'
	When 'white' then 'Beyaz'
	when 'Yellow' then 'Sar�'
else 'Renk Tan�m� Yap�lmam��'
end)as Renkler
from DimProduct