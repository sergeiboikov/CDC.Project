CREATE TABLE [Staging].[Country_deletes]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [Country_deletes_name] ON
[Staging].[Country_deletes]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]