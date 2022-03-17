CREATE TABLE [dbo].[Products]
(
	[Id] INT  NOT NULL PRIMARY KEY , 
    [Name] VARCHAR(100) NULL, 
    [Description] VARCHAR(MAX) NULL, 
    [ProductTypeID] INT CONSTRAINT FK_ProductCategoryID FOREIGN KEY REFERENCES ProductCategory(Id)
)
