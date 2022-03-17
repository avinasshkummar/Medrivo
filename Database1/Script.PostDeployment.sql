/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


----Product Category------

INSERT INTO [dbo].ProductCategory (Id,Name,Description)
VALUES
(1,'NUTRITION','Nutrition'),
(2,'SUPPLEMENT','Supplement'),
(3,'ANTI-TOXIN','Anti-Toxin'),
(4,'DISINFECTANCT','Disinfectant')


------Products--------------
INSERT INTO [dbo].Products (Id,Name,Description,ProductTypeID)
VALUES
(1,'MOREGGS','More Eggs',1),
(2,'GROW ME GOLD','Grow Me Gold',1),
(3,'YOLKCARE','Yolk Care',2),
(4,'VITAMED K','Vitamed K',2 ),
(5,'GUT ON','Gut On',2 ),
(6,'KOLIMED','Kolimed',2 ),
(7,'HEPTAVITA','Heptavita',2 ),
(8,'MEDIPHYT','Mediphyt',2 ),
(9,'TOXOKLEAN','Toxoklean',3 ),
(10,'BV - CIDE','BV- Cide',4 )


------Product URL------------
INSERT INTO [dbo].ProductImages (Id,ProductImagePath,ProductID)
VALUES
(1,'../Content/img/Product Branding/MOREGGS.png',1),
(2,'../Content/img/Product Branding/GROW ME GOLD.png',2),
(3,'../Content/img/Product Branding/YOLKCARE.png',3),
(4,'../Content/img/Product Branding/VITAMED K.png',4 ),
(5,'../Content/img/Product Branding/GUT ON.png',5 ),
(6,'../Content/img/Product Branding/KOLIMED.png',6 ),
(7,'../Content/img/Product Branding/HEPTAVITA.png',7 ),
(8,'../Content/img/Product Branding/MEDIPHYT.png',8 ),
(9,'../Content/img/Product Branding/TOXOKLEAN.png',9 ),
(10,'../Content/img/Product Branding/BV - CIDE.png',10 )