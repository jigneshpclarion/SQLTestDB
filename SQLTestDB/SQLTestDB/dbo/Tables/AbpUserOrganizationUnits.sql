CREATE TABLE [dbo].[AbpUserOrganizationUnits] (
    [Id]                 BIGINT   IDENTITY (1, 1) NOT NULL,
    [TenantId]           INT      NULL,
    [UserId]             BIGINT   NOT NULL,
    [OrganizationUnitId] BIGINT   NOT NULL,
    [IsDeleted]          BIT      NOT NULL,
    [CreationTime]       DATETIME NOT NULL,
    [CreatorUserId]      BIGINT   NULL,
    CONSTRAINT [PK_dbo.AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED ([Id] ASC)
);

