CREATE TABLE [dbo].[AbpUsers] (
    [Id]                     BIGINT         IDENTITY (1, 1) NOT NULL,
    [AuthenticationSource]   NVARCHAR (64)  NULL,
    [UserName]               NVARCHAR (256) NOT NULL,
    [TenantId]               INT            NULL,
    [EmailAddress]           NVARCHAR (256) NOT NULL,
    [Name]                   NVARCHAR (64)  NOT NULL,
    [Surname]                NVARCHAR (64)  NOT NULL,
    [Password]               NVARCHAR (128) NOT NULL,
    [EmailConfirmationCode]  NVARCHAR (328) NULL,
    [PasswordResetCode]      NVARCHAR (328) NULL,
    [LockoutEndDateUtc]      DATETIME       NULL,
    [AccessFailedCount]      INT            NOT NULL,
    [IsLockoutEnabled]       BIT            NOT NULL,
    [PhoneNumber]            NVARCHAR (32)  NULL,
    [IsPhoneNumberConfirmed] BIT            NOT NULL,
    [SecurityStamp]          NVARCHAR (128) NULL,
    [IsTwoFactorEnabled]     BIT            NOT NULL,
    [IsEmailConfirmed]       BIT            NOT NULL,
    [IsActive]               BIT            NOT NULL,
    [LastLoginTime]          DATETIME       NULL,
    [IsDeleted]              BIT            NOT NULL,
    [DeleterUserId]          BIGINT         NULL,
    [DeletionTime]           DATETIME       NULL,
    [LastModificationTime]   DATETIME       NULL,
    [LastModifierUserId]     BIGINT         NULL,
    [CreationTime]           DATETIME       NOT NULL,
    [CreatorUserId]          BIGINT         NULL,
    CONSTRAINT [PK_dbo.AbpUsers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AbpUsers_dbo.AbpUsers_CreatorUserId] FOREIGN KEY ([CreatorUserId]) REFERENCES [dbo].[AbpUsers] ([Id]),
    CONSTRAINT [FK_dbo.AbpUsers_dbo.AbpUsers_DeleterUserId] FOREIGN KEY ([DeleterUserId]) REFERENCES [dbo].[AbpUsers] ([Id]),
    CONSTRAINT [FK_dbo.AbpUsers_dbo.AbpUsers_LastModifierUserId] FOREIGN KEY ([LastModifierUserId]) REFERENCES [dbo].[AbpUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_DeleterUserId]
    ON [dbo].[AbpUsers]([DeleterUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_LastModifierUserId]
    ON [dbo].[AbpUsers]([LastModifierUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CreatorUserId]
    ON [dbo].[AbpUsers]([CreatorUserId] ASC);

