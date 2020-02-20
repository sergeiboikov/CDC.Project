CREATE TABLE [Staging].[Country_inserts]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [Country_inserts_name] ON
[Staging].[Country_inserts]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]