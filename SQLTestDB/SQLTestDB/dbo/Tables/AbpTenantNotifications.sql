CREATE TABLE [dbo].[AbpTenantNotifications] (
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [TenantId]                        INT              NULL,
    [NotificationName]                NVARCHAR (96)    NOT NULL,
    [Data]                            NVARCHAR (MAX)   NULL,
    [DataTypeName]                    NVARCHAR (512)   NULL,
    [EntityTypeName]                  NVARCHAR (250)   NULL,
    [EntityTypeAssemblyQualifiedName] NVARCHAR (512)   NULL,
    [EntityId]                        NVARCHAR (96)    NULL,
    [Severity]                        TINYINT          NOT NULL,
    [CreationTime]                    DATETIME         NOT NULL,
    [CreatorUserId]                   BIGINT           NULL,
    CONSTRAINT [PK_dbo.AbpTenantNotifications] PRIMARY KEY CLUSTERED ([Id] ASC)
);

