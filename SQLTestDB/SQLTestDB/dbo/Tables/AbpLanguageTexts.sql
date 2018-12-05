CREATE TABLE [dbo].[AbpLanguageTexts] (
    [Id]                   BIGINT         IDENTITY (1, 1) NOT NULL,
    [TenantId]             INT            NULL,
    [LanguageName]         NVARCHAR (10)  NOT NULL,
    [Source]               NVARCHAR (128) NOT NULL,
    [Key]                  NVARCHAR (256) NOT NULL,
    [Value]                NVARCHAR (MAX) NOT NULL,
    [LastModificationTime] DATETIME       NULL,
    [LastModifierUserId]   BIGINT         NULL,
    [CreationTime]         DATETIME       NOT NULL,
    [CreatorUserId]        BIGINT         NULL,
    CONSTRAINT [PK_dbo.AbpLanguageTexts] PRIMARY KEY CLUSTERED ([Id] ASC)
);

