CREATE TABLE [Source].[Country_src]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [Country_src_name] ON
[Source].[Country_src]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]
