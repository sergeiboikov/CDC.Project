CREATE TABLE [Source].[07_CDC_src]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [07_cdc_src_states_name] ON
[Source].[07_CDC_src]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]
