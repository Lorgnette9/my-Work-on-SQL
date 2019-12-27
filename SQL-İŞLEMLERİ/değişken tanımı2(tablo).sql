		
		--DEGÝSKEN TANIMLAMA

-- bu tablo ram'de oluþur.Oluþturup ayrý select yaparsan gelmez o an'a ait.

declare @Personel table 
(
	ID int,
	Isim nvarchar(20),
	SoyIsim nvarchar(20)
)

insert into @Personel (ID,Isim,SoyIsim) values(1,'Cemil','Oz')

select * from @Personel

update @Personel set Isim='Umit' where ID=1

Select *from @Personel

delete @Personel where ID=1

Select *from @Personel