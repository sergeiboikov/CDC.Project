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
TRUNCATE TABLE [Source].[Country_src];
GO
INSERT INTO [Source].[Country_src]
           ([name],[state])
     VALUES
            ('Russia','1')
		   ,('USA','2')
		   ,('Japan','3')
		   ,('China','4')
		   ,('Germany','5')
GO