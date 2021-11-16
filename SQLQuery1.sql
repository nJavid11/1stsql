Create database Market
USE Market

CREATE TABLE Product(
Id int identity primary key,
Name nvarchar(50) UNIQUE,
Price int,
BrandId int,
FOREIGN KEY (BrandId) REFERENCES Brand(Id)
)

CREATE TABLE Brand (
Id int identity primary key,
Name nvarchar(50) UNIQUE
)
INSERT Product
VALUES('Milla')

INSERT Product
VALUES('Coca Cola')

INSERT Product
VALUES('Sirab')

INSERT Product
VALUES('Ivanovka')

INSERT Product
VALUES('Algida')


truncate table Brand

INSERT Product
VALUES('Sud',15,1)

INSERT INTO Product
VALUES('Cola',1,3)

INSERT INTO Product
VALUES('Su',3,4)

INSERT INTO Product
VALUES('Kesmik',12,5)

INSERT INTO Product
VALUES('Dondurma',6,6)

INSERT INTO Product
VALUES('Qatiq',4,1)

INSERT INTO Product
VALUES('Fanta',2,3)

INSERT INTO Product
VALUES('Yag',5,5)

INSERT INTO Product
VALUES('Keks',1,6)

INSERT INTO Product
VALUES('Tvaroq',12,5)

--Product where Price are bigger than 10
SELECT * from Product where Price>10

--Brands with name size bigger than 5
SELECT * from Brand where Len(Name)>5

--Product wwith price lower than average
SELECT AVG(Price) from Product
SELECT * from Product where Price>(SELECT AVG(Price) from Product)