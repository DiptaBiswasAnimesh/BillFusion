--create database SuperShopManagementSystem
use SuperShopManagementSystem

--Admin
create table admin(
	AdminId int identity(101,1) primary key,
	username varchar(50),
	password varchar(50)
)

Insert into admin(username, password) 
values('paul','12345'),
('Fariha Tasnim Chowdhury','34343'),
('Adiba Zarin','43433'),

('Bidyarthi Paul','w34de3'),
('Zakia Sultana','vvdft343'),
('Dipta Biswas','35566h')


--Category
 create table category(
	cId int identity(1001,1) primary key,
	cName varchar(70)
 )

 Insert into category values('Fruits And Vegetables'),
			('Meat  and Fish'),
			('Cooking Essentials'),
			('Sauce & Pickels'),
			('Snacks & Instant Foods')
 select * from category
 truncate table category
 drop table category

 --Product
 select DATEDIFF(day, GETDATE(), EXP) as CountDays from product where pName = 'Borocoli'
 create table product(
	pId int identity(1,1) primary key,
	cId int Foreign key references category(cId),
	pName varchar(50),
	MFD varchar(30),
	EXP varchar(30),
	WSP varchar(30),
	MRP varchar(30),
	profit varchar(30),
	availability varchar(30),
	currDate varchar(30)
 )
 insert into product(pName,cId,MFD,EXP,WSP,profit,MRP,availability)
  values
 ('Water Melon',1001,'2023-02-12','2023-02-16',280,20,300,'Unavailable'),
('Apple',1001,'2023-02-12','2023-05-16',300,50,350,'Unavailable'),
('Orange',1001,'2023-02-01','2023-04-26',280,20,300,'Available'),
('Banana',1001,'2023-02-12','2023-02-18',100,20,120,'Available'),
('Pomegranate',1001,'2023-02-12','2023-04-16',280,20,300,'Unavailable'),
('AloeVera',1001,'2023-01-12','2023-01-20',80,10,90,'Unavailable'),
('Borocoli',1001,'2023-02-10','2023-02-20',50,10,60,'Available'),
('Capsicum',1001,'2023-02-11','2023-02-15',120,20,140,'Unavailable'),
('Tomato',1001,'2023-02-12','2023-02-18',40,05,45,'Available'),
('Misti Kumara',1001,'2023-02-10','2023-02-20',35,10,4,'Available'),
('Cabbage',1001,'2023-02-10','2023-02-20',50,10,60,'Available'),
('carrot',1001,'2023-02-09','2023-02-16',80,05,85,'Available'),
('Beef Premium',1002,'2022-11-10','2023-11-01',760,40,800,'Unavailable'),
('Khashir Mangsho',1002,'2022-10-22','2023-11-20',580,20,600,'Available'),
('Broiler Chicken',1002,'2022-12-12','2023-5-16',300,50,350,'Available'),
('Local Chicken',1002,'2023-02-01','2023-05-16',465,20,485,'Available'),
('Carpu Cultered Mediuim',1002,'2023-02-06','2023-4-16',280,30,310,'Unavailable'),
('horini Chingri',1002,'2022-09-29','2023-02-01',350,50,400,'Available'),
('Katla Medium',1002,'2023-02-02','2023-05-16',250,20,270,'Available'),
('Nazirshail Standard Rice',1003,'2023-03-12','2023-04-16',67,05,72,'Unavailable'),
('Chinigura Premium Rice',1003,'2023-01-12','2023-07-16',160,20,180,'Available'),
('Soyabean Oil',1003,'2022-02-12','2022-08-16',223,07,230,'Available'),
('Mustard Oil',1003,'2023-02-22','2023-06-16',224,10,334,'Available'),
('Olive Oil',1003,'2023-01-23','2024-02-08',170,34,204,'Available'),
('ACI Pure Salt',1003,'2022-12-12','2023-06-16',40,05,15,'Available'),
('Spaghetti',1005,'2022-02-02','2024-02-16',190,14,204,'Available'),
('knorr Thai Soup',1005,'2022-07-12','2024-08-16',233,26,259,'Available'),
('Tomato ketchup',1004,'2023-02-01','2024-12-12',120,20,140,'Unavailable'),
('BBQ Sauce',1004,'2022-02-01','2023-12-15',120,20,140,'Available'),
('Peri-Peri Sauce',1004,'2023-01-21','2024-05-12',120,20,140,'Available'),
('Kaju Badam',1005,'2022-06-12','2023-12-16',400,20,420,'Available'),
('pestacio',1005,'2022-08-19','2024-03-16',232,20,252,'Available'),
('Lays Creame and onion chips',1005,'2022-10-01','2023-12-10',100,23,123,'Available'),
('Meridian Potato Crackers',1005,'2023-02-04','2025-02-22',08,02,10,'Available'),
('BD Foods Chanachur',1005,'2023-02-12','2024-02-16',40,08,48,'Available'),
 ('Frozen Paratha',1005,'2022-12-01','2023-10-16',290,10,300,'Available'),
 ('Mama hot and spicy noodles',1005,'2021-02-12','2023-05-05',284,16,300,'Available'),
 ('cornflackes',1005,'2022-12-12','2023-12-16',200,31,231,'Available')
 select * from product
 truncate table product
 drop table product

 --Customer
 create table customer(
	customerId int identity(4001,1) primary key,
	customerName varchar(50),
	phoneNumber varchar(50),
	email varchar(50),
	gender varchar(50),
	member varchar(20)
 )
 insert into Customer(CustomerName,phoneNumber,email,gender,member)
values('Fariha Tasnim Chowdhury','0153392113','fariha.cse@aust.edu','female','Yes'),
('Adiba Zarin','0155792513','adiba@gmail.com','female','No'),
('Bidyarthi Paul','0133692316','bp@gmail.com','male','No'),
('Zakia Sultana','0183892113','pran@gmail.com','female','Yes'),
('Dipta Biswas','0159352113','dipta@gmail.com','male','Yes')
 select * from customer
 truncate table customer
 drop table customer


 --Invoice
 create table invoice(
	pId int Foreign key references product(pId),
	quantity int,
	PurchaseDate varchar(10),
	PurchaseTime varchar(10)
 )
 select * from invoice
 truncate table invoice
 drop table invoice
 select PurchaseDate,PurchaseTime,product.pName as productName, product.profit as profitPerProduct, invoice.quantity as ProductQuantity from product join invoice on product.pId = invoice.pId



