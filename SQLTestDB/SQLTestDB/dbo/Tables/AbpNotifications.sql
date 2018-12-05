CREATE TABLE [dbo].[AbpNotifications] (
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [NotificationName]                NVARCHAR (96)    NOT NULL,
    [Data]                            NVARCHAR (MAX)   NULL,
    [DataTypeName]                    NVARCHAR (512)   NULL,
    [EntityTypeName]                  NVARCHAR (250)   NULL,
    [EntityTypeAssemblyQualifiedName] NVARCHAR (512)   NULL,
    [EntityId]                        NVARCHAR (96)    NULL,
    [Severity]                        TINYINT          NOT NULL,
    [UserIds]                         NVARCHAR (MAX)   NULL,
    [ExcludedUserIds]                 NVARCHAR (MAX)   NULL,
    [TenantIds]                       NVARCHAR (MAX)   NULL,
    [CreationTime]                    DATETIME         NOT NULL,
    [CreatorUserId]                   BIGINT           NULL,
    CONSTRAINT [PK_dbo.AbpNotifications] PRIMARY KEY CLUSTERED ([Id] ASC)
);

