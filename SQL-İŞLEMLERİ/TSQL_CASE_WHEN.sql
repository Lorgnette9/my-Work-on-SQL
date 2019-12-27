
-----CASE WHEN KULLANIMI

-- select case kolonAdi 
--when 'Red' then 'Kýrmýzý'
--when 'Red' then 'Kýrmýzý'
--when 'Red' then 'Kýrmýzý'
--when 'Red' then 'Kýrmýzý'
--else
--end

select EnglishProductName,Color  from  DimProduct

select Distinct Color  from  DimProduct			-- 10 tane renk varmýþ 

--Case when kullanarak türkçelestirelim

select 
EnglishProductName,
(case Color
	when 'Black' then 'Siyah'
	when 'Blue' then 'Mavi'
	when 'Grey' then 'Gri'
	When 'multi' then 'CokRenkli'
	when 'NA' then 'Renksiz'
	when 'Silver' then 'Gümüþ'
	when 'silver/Black' then 'Gümüþ/Siyah'
	When 'white' then 'Beyaz'
	when 'Yellow' then 'Sarý'
else 'Renk Tanýmý Yapýlmamýþ'
end)as Renkler
from DimProduct