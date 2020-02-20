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
TRUNCATE TABLE [Source].[07_CDC_src];

INSERT INTO [Source].[07_CDC_src]
           ([name],[state])
     VALUES
            ('1','1')
		   ,('2','2')
		   ,('3','3')
		   ,('4','4')
		   ,('5','5')
GO