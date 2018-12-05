CREATE TABLE [dbo].[AbpUserNotifications] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [TenantId]             INT              NULL,
    [UserId]               BIGINT           NOT NULL,
    [TenantNotificationId] UNIQUEIDENTIFIER NOT NULL,
    [State]                INT              NOT NULL,
    [CreationTime]         DATETIME         NOT NULL,
    CONSTRAINT [PK_dbo.AbpUserNotifications] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId_State_CreationTime]
    ON [dbo].[AbpUserNotifications]([UserId] ASC, [State] ASC, [CreationTime] ASC);

