
--While D�ng�s�

--Genel Kullanim
	
--begin

--kod veya kodlar

--end

--------------------

declare @Isim nvarchar(20) ='Alan Turing'
declare @Sayac int=0

--ismin uzunlu�una e�it olana kadar 
while @Sayac <=  LEN(@Isim)
begin
print substring(@Isim,1,@Sayac)	--ismin 1. karakterinden sayaca kadar ay�racak
set @Sayac=@Sayac + 1
end
print 'While Dong�s� sonland�.'
