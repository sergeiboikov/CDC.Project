CREATE TABLE [Source].[07_CDC]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [cdc_states_name] ON
[Source].[07_CDC]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]
