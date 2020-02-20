CREATE TABLE [Staging].[Person_deletes](
	[PersonID] [int] NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[Birthdate] [date] NOT NULL,
	[Gender] [char](1) NULL,
	[Address] [nvarchar](255) NULL,
) ON [PRIMARY]
GO