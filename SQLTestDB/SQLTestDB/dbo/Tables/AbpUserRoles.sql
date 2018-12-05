CREATE TABLE [dbo].[AbpUserRoles] (
    [Id]            BIGINT   IDENTITY (1, 1) NOT NULL,
    [TenantId]      INT      NULL,
    [UserId]        BIGINT   NOT NULL,
    [RoleId]        INT      NOT NULL,
    [CreationTime]  DATETIME NOT NULL,
    [CreatorUserId] BIGINT   NULL,
    CONSTRAINT [PK_dbo.AbpUserRoles] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpUserRoles_dbo.AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[AbpUserRoles]([UserId] ASC);

