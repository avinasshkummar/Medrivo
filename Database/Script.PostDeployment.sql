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
(2,'GROW ME GOLD LIQUID','Grow Me Gold Liquid',1),
(3,'GROW ME GOLD POWDER','Grow Me Gold Powder',1),
(4,'YOLKCARE','Yolk Care',2),
(5,'VITAMED K','Vitamed K',2 ),
(6,'GUT ON','Gut On',2 ),
(7,'KOLIMED','Kolimed',2 ),
(8,'HEPTAVITA','Heptavita',2 ),
(9,'MEDIPHYT','Mediphyt',2 ),
(10,'TOXOKLEAN','Toxoklean',3 ),
(11,'VB - CIDE','VB- Cide',4 )


------Product URL------------
INSERT INTO [dbo].ProductImages (Id,ProductImagePath,IsLogo,ProductID)
VALUES
(1,'/Content/img/Product Branding/MOREGGS.png',1,1),
(2,'/Content/img/Product Branding/GROW ME GOLD LIQUID.png',1,2),
(3,'/Content/img/Product Branding/GROW ME GOLD POWDER.png',1,3),
(4,'/Content/img/Product Branding/YOLKCARE.png',1,4),
(5,'/Content/img/Product Branding/VITAMED K.png',1,5 ),
(6,'/Content/img/Product Branding/GUT ON.png',1,6 ),
(7,'/Content/img/Product Branding/KOLIMED.png',1,7 ),
(8,'/Content/img/Product Branding/HEPTAVITA.png',1,8 ),
(9,'/Content/img/Product Branding/MEDIPHYT.png',1,9 ),
(10,'/Content/img/Product Branding/TOXOKLEAN.png',1,10 ),
(11,'/Content/img/Product Branding/VBCIDE.png',1,11 ),
(12,'https://drive.google.com/file/d/1FRwAejNVngdDBMUcZBm7MGYSg5MDkyUq/view?usp=sharing',0,1),
(13,'https://drive.google.com/file/d/1R_eINXoI03sVw5U1ZwWhJKC7O2ceEnni/view?usp=sharing',0,2),
(14,'https://drive.google.com/file/d/17c2K8oo9dKTuG9GXgrcVsp6ddICJpqf-/view?usp=sharing',0,3),
(15,'#',0,4),
(16,'https://drive.google.com/file/d/1LDuvp4EqfMhzH1IccaGmQxUsISuoa6hF/view?usp=sharing',0,5 ),
(17,'#',0,6 ),
(18,'https://drive.google.com/file/d/1HFSbeUKPqKQsYjH0KVj4T5QzaxpSg6KP/view?usp=sharing',0,7 ),
(19,'https://drive.google.com/file/d/1BKZhGuDDPuWLbyK9pULaxO_6e2wI296C/view?usp=sharing',0,8 ),
(20,'#',0,9),
(21,'https://drive.google.com/file/d/1_fixAPyHyMaalNKR_uNV6Blgmgaonwr9/view?usp=sharing',0,10 ),
(22,'https://drive.google.com/file/d/1w-Q3bGmyto4N72pI5sw6OChL8S4N5QXh/view?usp=sharing',0,11 )


------Products Description--------------
INSERT INTO [dbo].ProductDescription (Id,Description,ProductID)
VALUES
(1, 'MOREEGGS is a premium egg supplement for poultry. Good feed is the fuel from which eggs are produced and a thoughtful plan of nutrition is essential for chickens at all stages of development therefore, MOREEGGS is fortified with potent ingredients to support the optimum level of bird health in boosting the nutritional quality of eggs with enhanced levels of Omega-3 fatty acids and vitamin D3.It is best for egg laying hens as it is formulated with phytogenic, calcium, yeast complex and minerals for overall growth and better production of eggs.',1),
(2, 'GROWME-GOLD Improve growth and performance of broiler chickens, through greatly improve digestion and nutrient assimilation and modify the composition of the intestinal microbiota and improve intestinal morphometry.Growth Promoter which helps to improve Growth of Poultry Birds. It also Helps to prevent various Deficiencies. It Helps to reduce mortalities in Birds. Its an ideal feed supplement for Chicks, Broiler, Layers, Breeders, Growers.',2),
(3, 'Vitamin A is required for normal growth, reproduction and maintenance of epithelial cells in good condition GrowMe AN IDEAL GROWTH PROMOTOR Gold POWDER Bringing Loving Care to Health Care MB Vitamin D3 is an important nutrient for chickens, especially for growing chicks and laying hens.amino acids are needed to form body protein, some of which can be synthesized by the bird (non-essential), whereas others can not be made at all or in sufficient quantities to meet metabolic needs(essential).',3),
(4, 'description',4),
(5, 'Vitamin K is essential for synthesis of prothrombin, thus it plays an important role in clotting machanisms and also has a protective effect against coccidiosis. Deficiency prolonged may bleed to death from a slight bruise or any injury and haemorrhages may occur in the chicken''s body. Layer chicken fed low vitamin K diets produce eggs having poor hatchability and dead embroys may exhibit heamorrhagic spots.',5),
(6, 'GUT ON',6),
(7, 'KOLI MED is a blend of herbal Choline that helps in maintaining liver function and promotes adequate protein synthesis and its optimum utilization. KOLIMED helps in scavenging oxygen free radicals, promotes regeneration of damage tissues and cells, protects from stress condition, maintains fertility, immunity & homeostasis. In poultry, it enhances egg production, improves egg quality and hatchability.The main function of choline is to act as a lipotropic agent and prevents the abnormal fatty infiltration in liver (Fatty Liver Syndrome) thus ensures proper metabolism of the body & effective utilization of the nutrients. Moreover, it helps in the formation of an excitatory neurotransmitter-acetylcholine, which is responsible for proper functioning of the nervous system and maintains its harmony. The supplementation of choline chloride diet improved weight gain and feed conversion efficiency in quail (Alagawany et al., 2015) and the symptoms of choline deficiency include reduced growth, fatty infiltration of liver and perosis in chicks (McDonald, 2011). Therefore, choline is referred as a “lipotropic” factor due to its function of acting on fat metabolism by hastening removal or decreasing deposition of fat in liver.Choline is a rediscovered critical amino acid for poultry and usually added to poultry diets in the form of synthetic choline chloride. Natural Choline is also present in plants in the phosphatidylcholine form, free choline and sphingomyelin. Currently, there are natural products, produced from selected plants, with high content of choline in esterified form and with high bioavailability, which may be an important alternative to synthetic choline chloride.',7),
(8, 'HEPTAVITA',8),
(9, 'MEDIPHYT',9),
(10, 'Most Powerful Multiple Toxin Binder has unique combination of buffered organic acids, MOS and HSCAS which, keeps feed free from toxins and make safe. Molds and contaminated feed can lead to reduced feed intake, hampers immunity, low  performance and stressful condition. Dietary intake of TOXOKLEAN strengthens the health condition through de-toxification, bio-degradation and immunostimulation. It selectively adsorbs the various Mycotoxins.',10),
(11, 'VB-CIDE Is a broad spectrum disinfectant in powder form with wide range of applications in livestock farms/poultry houses, hatcheries, food processing and pharmaceuticals units. Activity of VB-CIDE against all groups of microorganisms like bacteria, fungi & viruses make VB-CIDE a sanitizer of choice.VB-CIDE Is a blend of inorganic peroxy compounds, salts, buffers, descalants anionic detergents & stabilizer When dissolved in water VB-CIDE generates ozone and hypochlorous acid which are powerful oxidizing agents. VB-CIDE remains active even in the presence of organic matter. At recommended dilutions VB-CIDE spray can be used safely to reduce lateral spread of infection.VB-CIDE For safe, effective and control of all major types of viruses, bacteria, fungi yeast & moulds in poultry, cattle, Horses, Camel, Dogs and Cats, Sheep and goats, small and Zoo animals.',11)