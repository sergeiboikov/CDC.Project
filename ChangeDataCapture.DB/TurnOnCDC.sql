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

EXEC sys.sp_cdc_enable_db;

EXEC sys.sp_cdc_enable_table
	@source_schema = 'Source', --Schema of Source Table
	@source_name = 'Person', --Schema of Source Table
	@role_name = NULL, --Controls Access to Change Data
	@supports_net_changes = 1 --Supports Quering for net changes


