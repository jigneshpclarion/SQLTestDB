CREATE TABLE [dbo].[AbpUserLoginAttempts] (
    [Id]                     BIGINT         IDENTITY (1, 1) NOT NULL,
    [TenantId]               INT            NULL,
    [TenancyName]            NVARCHAR (64)  NULL,
    [UserId]                 BIGINT         NULL,
    [UserNameOrEmailAddress] NVARCHAR (255) NULL,
    [ClientIpAddress]        NVARCHAR (64)  NULL,
    [ClientName]             NVARCHAR (128) NULL,
    [BrowserInfo]            NVARCHAR (512) NULL,
    [Result]                 TINYINT        NOT NULL,
    [CreationTime]           DATETIME       NOT NULL,
    CONSTRAINT [PK_dbo.AbpUserLoginAttempts] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId_TenantId]
    ON [dbo].[AbpUserLoginAttempts]([UserId] ASC, [TenantId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TenancyName_UserNameOrEmailAddress_Result]
    ON [dbo].[AbpUserLoginAttempts]([TenancyName] ASC, [UserNameOrEmailAddress] ASC, [Result] ASC);

