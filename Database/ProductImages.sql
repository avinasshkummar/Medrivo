CREATE TABLE [dbo].[ProductImages]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [ProductImagePath] VARCHAR(200) NULL, 
    [IsLogo] BIT NULL,
    [ProductID] INT CONSTRAINT FK_ProductID FOREIGN KEY REFERENCES Products(Id)
)
