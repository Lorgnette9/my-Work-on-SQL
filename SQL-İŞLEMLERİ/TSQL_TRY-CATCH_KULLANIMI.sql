
--TRY CATCH Kullan�m�

--Begin TRY
--islemler
--end try
--BEGIN CATCH
--HATA oldu�unda yapmak istedi�imiz i�lemler
--end CATCH

---------------------------------------

create table #Personel
(
ID int primary key ,
Isim nvarchar(20) not null,
SoyIsim nvarchar(20) not null
)

insert into #Personel(ID,Isim,SoyIsim) values(1,'Sirius','Black')


begin try

insert into #Personel (ID) values ('Cengiz')

end try

begin catch
	print 'Hata Olu�tu'
end catch

