CREATE TABLE [dbo].[AbpRoles] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [Description]          NVARCHAR (MAX) NULL,
    [TenantId]             INT            NULL,
    [Name]                 NVARCHAR (32)  NOT NULL,
    [DisplayName]          NVARCHAR (64)  NOT NULL,
    [IsStatic]             BIT            NOT NULL,
    [IsDefault]            BIT            NOT NULL,
    [IsDeleted]            BIT            NOT NULL,
    [DeleterUserId]        BIGINT         NULL,
    [DeletionTime]         DATETIME       NULL,
    [LastModificationTime] DATETIME       NULL,
    [LastModifierUserId]   BIGINT         NULL,
    [CreationTime]         DATETIME       NOT NULL,
    [CreatorUserId]        BIGINT         NULL,
    CONSTRAINT [PK_dbo.AbpRoles] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpRoles_dbo.AbpUsers_CreatorUserId] FOREIGN KEY ([CreatorUserId]) REFERENCES [dbo].[AbpUsers] ([Id]),
    CONSTRAINT [FK_dbo.AbpRoles_dbo.AbpUsers_DeleterUserId] FOREIGN KEY ([DeleterUserId]) REFERENCES [dbo].[AbpUsers] ([Id]),
    CONSTRAINT [FK_dbo.AbpRoles_dbo.AbpUsers_LastModifierUserId] FOREIGN KEY ([LastModifierUserId]) REFERENCES [dbo].[AbpUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_DeleterUserId]
    ON [dbo].[AbpRoles]([DeleterUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_LastModifierUserId]
    ON [dbo].[AbpRoles]([LastModifierUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CreatorUserId]
    ON [dbo].[AbpRoles]([CreatorUserId] ASC);

