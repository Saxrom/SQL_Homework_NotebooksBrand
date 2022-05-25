CREATE DATABASE ConstraintsJoins

use ConstraintsJoins


ALTER TABLE Notebooks
ADD CONSTRAINT DF_Price DEFAULT 200 for Price


ALTER TABLE Brands
ADD CONSTRAINT CK_Name CHECK (Len(Name)>=3)

ALTER TABLE Notebooks
ADD Brand_Id int FOREIGN KEY REFERENCES Brands(Id)

SELECT Notebooks.Name,Price,Brands.Name as [BrandName] FROM Notebooks
INNER JOIN Brands
on Notebooks.Id=Brands.Id

SELECT Notebooks.Name,Price,Brands.Name as [BrandName] FROM Notebooks
INNER JOIN Brands
on Notebooks.Id=Brands.Id WHERE Price BETWEEN 100 and 500 OR Price>1000

SELECT Notebooks.Name,Price,Brands.Name as [BrandName] FROM Notebooks
INNER JOIN Brands
on Notebooks.Id=Brands.Id WHERE CHARINDEX('a',Brands.Name)>0