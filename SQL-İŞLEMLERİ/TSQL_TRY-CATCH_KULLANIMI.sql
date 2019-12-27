
--TRY CATCH Kullanýmý

--Begin TRY
--islemler
--end try
--BEGIN CATCH
--HATA olduðunda yapmak istediðimiz iþlemler
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
	print 'Hata Oluþtu'
end catch

