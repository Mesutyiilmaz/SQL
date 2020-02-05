select * from Employees

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees

select FirstName, LastName from Employees

select FirstName,LastName,Title, BirthDate from Employees

select FirstName Ad, LastName Soyad, Title Görev from Employees -- 1. yol
select FirstName as Adi , LastName as Soyadi , Title as Görev , BirthDate as 'Doğum Tarihi' from Employees -- 2. yol
select Adi = FirstName, Soyadi = LastName, Görev= Title, 'Doğum tarihi' = BirthDate, 'İşe Giriş Tarihi' = HireDate from Employees
select distinct city from Employees
select distinct Firstname, City from Employees

--metinleri birleştirme yöntemi
select TitleOfCourtesy +' '+ FirstName +' '+ LastName as personel from Employees
select  CONCAT ( TitleOfCourtesy , ' ', FirstName , ' ', LastName) AS PERSONEL from Employees 

-- Veritabanı İşlemleri

--Create => tablo üzerine veri ekleme işlemi
--Read   =>	Slect - from tabloadi
--Update => Tabloda yer alan kay(ıtların)dın güncelleme işlemi
--Delete => Tabloda yer alan kay(ıtları)dın Silinme işlemi

/* 
insert into <tabloAdi> (Sütun adları,) values (sütun değeri,)
*/
Select * from Categories

-- NOT : eğet bir alan primaru key ise ve olan identity özelliğine sahipse id değeri otomatik olarak sql tarafından veriliyor anlamıan gelir. ID değeri göndermeyin.
insert into Categories ( CategoryName , Description ) 
values ( 'tatlı','Fısıtıklı sarma' 
);
insert into Categories (Description) values ('Tepsi Baklava')
select * from Shippers
insert into Shippers(CompanyName,Phone) values('Mng Express','(503) 555-9831'),
insert into Shippers values('aras Express','(503) 555-9831')
insert into Customers (CustomerID, CompanyName) values (' 100 ','Bilge Adam' )
select * from Customers
select * into Calisanlar From Employees
select * from Calisanlar
update Calisanlar set LastName = 'yılmaz'
update Calisanlar set FirstName = 'mesut' where EmployeeID = 1 
update Calisanlar set LastName = 'şahin' where TitleOfCourtesy = 'mrs.'
select * into ürünler from Products
select * from ürünler
update ürünler set UnitPrice  = + '5'
Drop table ürünler
select * from ürünler
select * into ürünler from Products
update ürünler set UnitPrice = UnitPrice + (UnitPrice * 0.05)
select * from Calisanlar
delete from Calisanlar where EmployeeID = 1
delete from Calisanlar where TitleOfCourtesy IN ('Mrs.' , 'Ms.') 
select EmployeeID, FirstName, LastName from Employees
where EmployeeID >=  5
select BirthDate, LastName, FirstName from Employees where year (BirthDate) = 1960

