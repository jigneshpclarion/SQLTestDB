CREATE TABLE [dbo].[AbpUserAccounts] (
    [Id]                   BIGINT         IDENTITY (1, 1) NOT NULL,
    [TenantId]             INT            NULL,
    [UserId]               BIGINT         NOT NULL,
    [UserLinkId]           BIGINT         NULL,
    [UserName]             NVARCHAR (256) NULL,
    [EmailAddress]         NVARCHAR (256) NULL,
    [LastLoginTime]        DATETIME       NULL,
    [IsDeleted]            BIT            NOT NULL,
    [DeleterUserId]        BIGINT         NULL,
    [DeletionTime]         DATETIME       NULL,
    [LastModificationTime] DATETIME       NULL,
    [LastModifierUserId]   BIGINT         NULL,
    [CreationTime]         DATETIME       NOT NULL,
    [CreatorUserId]        BIGINT         NULL,
    CONSTRAINT [PK_dbo.AbpUserAccounts] PRIMARY KEY CLUSTERED ([Id] ASC)
);

