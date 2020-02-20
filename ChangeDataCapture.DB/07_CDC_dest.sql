CREATE TABLE [Destination].[07_CDC_dst]
(
	[name]  [nvarchar](256) NOT NULL,
	[state]	[nvarchar](256)	NOT NULL) ON [PRIMARY];

GO

CREATE UNIQUE NONCLUSTERED INDEX [07_cdc_dst_states_name] ON
[Destination].[07_CDC_dst]
([name] ASC)
WITH (PAD_INDEX = OFF) ON [PRIMARY]