
--While Döngüsü

--Genel Kullanim
	
--begin

--kod veya kodlar

--end

--------------------

declare @Isim nvarchar(20) ='Alan Turing'
declare @Sayac int=0

--ismin uzunluðuna eþit olana kadar 
while @Sayac <=  LEN(@Isim)
begin
print substring(@Isim,1,@Sayac)	--ismin 1. karakterinden sayaca kadar ayýracak
set @Sayac=@Sayac + 1
end
print 'While Dongüsü sonlandý.'
