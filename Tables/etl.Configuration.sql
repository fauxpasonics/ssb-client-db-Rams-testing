CREATE TABLE [etl].[Configuration]
(
[ConfigurationID] [int] NOT NULL,
[Name] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NULL,
[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF__Configura__Creat__5812160E] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Configura__Creat__59063A47] DEFAULT (suser_sname()),
[LastUpdatedOn] [datetime] NOT NULL CONSTRAINT [DF__Configura__LastU__59FA5E80] DEFAULT (getdate()),
[LastUpdatedBy] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Configura__LastU__5AEE82B9] DEFAULT (suser_sname())
)
GO
ALTER TABLE [etl].[Configuration] ADD CONSTRAINT [PK__Configur__95AA539B42B9FC79] PRIMARY KEY CLUSTERED  ([ConfigurationID])
GO
