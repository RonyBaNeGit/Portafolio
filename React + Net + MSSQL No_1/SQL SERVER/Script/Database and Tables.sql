CREATE DATABASE EMedicine;
USE EMedicine

/*Crear tabla de usuarios*/
CREATE TABLE Users(
ID INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Password VARCHAR(100),
Email VARCHAR(100),
Fund DECIMAL (18,2),
Type VARCHAR(100),
Status INT, 
CreatedOn Datetime);

/*Lista de productos de medicina*/
CREATE TABLE Medicines (
ID INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(100),
Manufacturer VARCHAR(100),/*Manufacturer*/
UnitPrice DECIMAL(18,2),
Discount DECIMAL(18,2),
Quantity INT,
ExpDate Datetime,
ImageUrl VARCHAR(100),
Status INT)

/*Tabla correspondiente al carrito de compras*/
CREATE TABLE Cart (
ID INT IDENTITY(1,1) PRIMARY KEY,
UserId INT,
MedicineID INT,
UnitPrice DECIMAL(18,2),
Discount DECIMAL(18,2),
Quantity INT,
TotalPrice DECIMAL(18,2)) /*Total Price*/

/*Tabla correspondiente a las Ordenes*/
CREATE TABLE Orders(
ID INT IDENTITY(1,1) PRIMARY KEY,
UserId INT,
OrderNo VARCHAR(100),
OrderTotal DECIMAL(18,2),
OrderStatus VARCHAR(100))

/*Tabla correspondiente a los elementos de una orden*/
CREATE TABLE OrderITems(
ID INT IDENTITY(1,1) PRIMARY KEY,
OrderID INT,
MedicineID INT,
UnitPrice DECIMAL(18,2),/*unit price*/
Discount DECIMAL(18,2),
Quantity INT,
TotalPrice DECIMAL(18,2))

/*Consulta tablas*/
SELECT * FROM Users;
SELECT * FROM Medicines;
SELECT * FROM Cart;
SELECT * FROM Orders;
SELECT * FROM OrderITems;


/*Eliminar BD*/
/*DROP DATABASE EMedicine*/