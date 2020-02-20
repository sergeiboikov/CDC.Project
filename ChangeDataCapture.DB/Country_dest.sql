CREATE TABLE [Destination].[Country_dst]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [Country_dst_name] ON
[Destination].[Country_dst]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]