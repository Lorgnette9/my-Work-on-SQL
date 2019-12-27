
---TEMP TABLE KULLANIMI

--Local temp Table : #
--Global temp table : ##


create table #Personel
(
ID int primary key ,
Isim nvarchar(20) not null,
SoyIsim nvarchar(20) not null
)

insert into #Personel(ID,Isim,SoyIsim) values(1,'Sirius','Black')
insert into #Personel(ID,Isim,SoyIsim) values(2,'James','Potter')


update #Personel
set
Isim='Patiayak'
where
ID=1

select *from #Personel


delete #Personel
where
ID=1