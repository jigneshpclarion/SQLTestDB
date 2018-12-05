CREATE TABLE [dbo].[AbpNotificationSubscriptions] (
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [TenantId]                        INT              NULL,
    [UserId]                          BIGINT           NOT NULL,
    [NotificationName]                NVARCHAR (96)    NULL,
    [EntityTypeName]                  NVARCHAR (250)   NULL,
    [EntityTypeAssemblyQualifiedName] NVARCHAR (512)   NULL,
    [EntityId]                        NVARCHAR (96)    NULL,
    [CreationTime]                    DATETIME         NOT NULL,
    [CreatorUserId]                   BIGINT           NULL,
    CONSTRAINT [PK_dbo.AbpNotificationSubscriptions] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_NotificationName_EntityTypeName_EntityId_UserId]
    ON [dbo].[AbpNotificationSubscriptions]([NotificationName] ASC, [EntityTypeName] ASC, [EntityId] ASC, [UserId] ASC);

