CREATE TABLE [Staging].[Country_updates]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [Country_updates_name] ON
[Staging].[Country_updates]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]