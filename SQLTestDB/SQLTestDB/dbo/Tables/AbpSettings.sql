CREATE TABLE [dbo].[AbpSettings] (
    [Id]                   BIGINT          IDENTITY (1, 1) NOT NULL,
    [TenantId]             INT             NULL,
    [UserId]               BIGINT          NULL,
    [Name]                 NVARCHAR (256)  NOT NULL,
    [Value]                NVARCHAR (2000) NULL,
    [LastModificationTime] DATETIME        NULL,
    [LastModifierUserId]   BIGINT          NULL,
    [CreationTime]         DATETIME        NOT NULL,
    [CreatorUserId]        BIGINT          NULL,
    CONSTRAINT [PK_dbo.AbpSettings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpSettings_dbo.AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[AbpSettings]([UserId] ASC);

