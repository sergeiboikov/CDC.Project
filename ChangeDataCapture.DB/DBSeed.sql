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
INSERT INTO [Source].[Person]
           ([FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[Birthdate]
           ,[Gender]
           ,[Address])
     VALUES
           (N'John',	N'Tolkien',	N'Ronald',	'1892-01-03',	N'M',	N'United Kingdom')
		   , (N'Dan',	N'Brown',	NULL,	'1964-06-22',	N'M',	N'USA')
		   , (N'Paulo',	N'Coelho',	NULL,	'1947-08-24',	N'M',	N'Brazil');
GO