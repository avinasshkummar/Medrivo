/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF EXISTS(SELECT *
          FROM   [dbo].ProductImages)
  DROP TABLE [dbo].ProductImages;
IF EXISTS(SELECT *
          FROM   [dbo].ProductDescription)
  DROP TABLE [dbo].ProductDescription;
IF EXISTS(SELECT *
          FROM   [dbo].Products)
  DROP TABLE [dbo].Products;
IF EXISTS(SELECT *
          FROM   [dbo].ProductCategory)
  DROP TABLE [dbo].ProductCategory;

