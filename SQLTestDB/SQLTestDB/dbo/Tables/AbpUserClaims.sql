CREATE TABLE [dbo].[AbpUserClaims] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [TenantId]      INT            NULL,
    [UserId]        BIGINT         NOT NULL,
    [ClaimType]     NVARCHAR (256) NULL,
    [ClaimValue]    NVARCHAR (MAX) NULL,
    [CreationTime]  DATETIME       NOT NULL,
    [CreatorUserId] BIGINT         NULL,
    CONSTRAINT [PK_dbo.AbpUserClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpUserClaims_dbo.AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[AbpUserClaims]([UserId] ASC);

