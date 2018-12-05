CREATE TABLE [dbo].[AbpPermissions] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [TenantId]      INT            NULL,
    [Name]          NVARCHAR (128) NOT NULL,
    [IsGranted]     BIT            NOT NULL,
    [CreationTime]  DATETIME       NOT NULL,
    [CreatorUserId] BIGINT         NULL,
    [RoleId]        INT            NULL,
    [UserId]        BIGINT         NULL,
    [Discriminator] NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.AbpPermissions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpPermissions_dbo.AbpRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AbpRoles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.AbpPermissions_dbo.AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RoleId]
    ON [dbo].[AbpPermissions]([RoleId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[AbpPermissions]([UserId] ASC);

