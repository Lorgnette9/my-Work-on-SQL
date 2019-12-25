create table Musteri
(
	Id int primary key,
	Isim  nvarchar(30),
	SoyIsim nvarchar(20),
	EmailAdres nvarchar(60) default 'info@abc.com',
	OlusturmaTarihi datetime default getdate()
)

create table MusteriGirisBilgileri
(	
	MID int primary key,
	KullaniciAdi nvarchar(30) unique not null,
	Sifre nvarchar(10) check(Len(Sifre)>6),
	GizliSoru nvarchar(40),
	Cevap nvarchar(40)
	Foreign key (MID) references Musteri(Id)
)


alter procedure SP_Musteri_YeniKayit
(
@Id int,
@Isim nvarchar(30),s
@SoyIsim nvarchar(30),
@EmailAdres nvarchar(60),

@KullaniciAdi nvarchar(30),
@Sifre nvarchar(10),
@GizliSoru nvarchar(40),
@Cevap nvarchar(40)
)
as
begin
insert into Musteri(Id,Isim,SoyIsim,EmailAdres) values(@Id,@Isim,@SoyIsim,@EmailAdres)
	if(@@ROWCOUNT>0)
	begin
	insert into MusteriGirisBilgileri(MID,KullaniciAdi,Sifre,GizliSoru,Cevap) values(@Id,@KullaniciAdi,@Sifre,@GizliSoru,@Cevap)
	end

end




create table Urun
(
	UrunId int primary key,
	Tanim nvarchar(50) not null,
	Adet int check(Adet>0)
)

create procedure SP_Urun_YeniKayit
(
@UrunId int,
@Tanim  nvarchar(50),
@Adet int
)
as
begin
insert into Urun (UrunId,Tanim,Adet) values (@UrunId,@Tanim,@Adet)
end

create procedure SP_Urun_KayitDüzenle
(
@UrunId int,
@Tanim  nvarchar(50),
@Adet int
)
as
begin
update Urun set Tanim=@Tanim ,Adet=@Adet where UrunId=@UrunId
end

Create proc SP_Urun_KayitSil
(
@UrunId int
)
as
begin
delete Urun where UrunId=@UrunId
end

create proc SP_UrunListe
as
begin
select *from Urun
end

create proc SP_Urun_TekKayit
(
@UrunId int
)
as
begin
select *from Urun  where UrunId=@UrunId
end


create table Satis
(
	ID int primary key,
	MID int not null,
	UID int not null,
	SatilanAdet  int check(SatilanAdet>0)
)

create proc  SP_Satis_YeniKayit
(
@Id int,
@MId int,
@UId int,
@SatilanAdet int
)
as
begin 
insert into Satis (ID,MID,UID,SatilanAdet) values (@Id,@MId,@UId,@SatilanAdet)
end

create proc SP_Satis_KayitDüzenle
(
@Id int,
@MId int,
@UId int,
@SatilanAdet int
)
as 
begin
update Satis
set
MID=@MId,
UID=@UId,
SatilanAdet=@SatilanAdet
where 
ID=@Id
end


 alter proc SP_Satis_KayitSil
 (
 @ID int
 )
 with encryption
 as
 begin
 delete Satis where ID=@ID
 end


