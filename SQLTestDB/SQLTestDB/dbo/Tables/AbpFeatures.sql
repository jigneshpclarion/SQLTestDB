CREATE TABLE [dbo].[AbpFeatures] (
    [Id]            BIGINT          IDENTITY (1, 1) NOT NULL,
    [TenantId]      INT             NULL,
    [Name]          NVARCHAR (128)  NOT NULL,
    [Value]         NVARCHAR (2000) NOT NULL,
    [CreationTime]  DATETIME        NOT NULL,
    [CreatorUserId] BIGINT          NULL,
    [EditionId]     INT             NULL,
    [Discriminator] NVARCHAR (128)  NOT NULL,
    CONSTRAINT [PK_dbo.AbpFeatures] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpFeatures_dbo.AbpEditions_EditionId] FOREIGN KEY ([EditionId]) REFERENCES [dbo].[AbpEditions] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_EditionId]
    ON [dbo].[AbpFeatures]([EditionId] ASC);

