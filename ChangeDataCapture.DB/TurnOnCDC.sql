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
:setvar DBName "ChangeDataCapture"

IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE [name] =  N'$(DBName)' AND [is_cdc_enabled] = 1)
BEGIN
	BEGIN TRAN
		EXEC sys.sp_cdc_enable_db;

		EXEC sys.sp_cdc_enable_table
			@source_schema = 'Source', --Schema of Source Table
			@source_name = '07_CDC_src', --Schema of Source Table
			@role_name = NULL, --Controls Access to Change Data
			@supports_net_changes = 0 --Supports Quering for net changes
	COMMIT TRAN
END


