CREATE TABLE [dbo].[ProductDescription]
(
	[Id] INT  NOT NULL PRIMARY KEY , 
    [Description] VARCHAR(MAX) NULL, 
    [ProductID] INT CONSTRAINT FK_ProductDescriptionID FOREIGN KEY REFERENCES Products(Id)
)
