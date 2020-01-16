
create database PersonelUygulama2017
go 
use PersonelUygulama2017
go

create table SistemKullanici
(
KullaniciId uniqueidentifier primary key,
KullaniciAdi nvarchar(30) unique,
Sifre nvarchar(20) not null
)

insert into SistemKullanici values(newid(),'murat.yilgin','2')

 create table Personeller
 (
 PersonelID uniqueidentifier primary key,
 Isim nvarchar(30),
 Soyisimn nvarchar(30),
 EmailAdres nvarchar(60),
 Telefon nvarchar(11)
 )

 EXEC sp_rename 'Personeller.[Soyisimn]','Soyisim','column'


 create proc SP_SistemKullanici_Kontrol
 (
 @KullaniciAdi nvarchar(30),
 @Sifre nvarchar(20)
 )
 as
 begin
 select count(*) from SistemKullanici where KullaniciAdi=@KullaniciAdi and Sifre=@Sifre
 end


 create proc SP_Personel_Ekle
 (
 @PersonelID uniqueidentifier ,
 @Isim nvarchar(30),
 @Soyisim nvarchar(30),
 @EmailAdres nvarchar(60),
 @Telefon nvarchar(11) 
 )
 as
 begin
 insert into Personeller values(@PersonelID,@Isim,@Soyisim,@EmailAdres,@Telefon)
 end


 create proc SP_Personel_Duzenle
 (
 @PersonelID uniqueidentifier,
 @Isim nvarchar(30),
 @Soyisim nvarchar(30),
 @EmailAdres nvarchar(60),
 @Telefon nvarchar(11) 
 )
 as
 begin
 update Personeller 
 set
 Isim=@Isim,
 Soyisim=@Soyisim,
 Telefon=@Telefon,
 EmailAdres=@EmailAdres
 where PersonelID=@PersonelID
 end





 create proc SP_Procedure_Sil
 (
 @PersonelId uniqueidentifier
 )
 as
 begin
 delete Personeller where PersonelID=@PersonelId
 end


 create proc SP_Personel_Getir
 as
 begin
 select * from Personeller
 end

 create proc SP_Personel_ID_Getir
 (
 @PersonelID uniqueidentifier
 )
 as
 begin
 select * from Personeller
 end














