CREATE TABLE [dbo].[AbpBackgroundJobs] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [JobType]       NVARCHAR (512) NOT NULL,
    [JobArgs]       NVARCHAR (MAX) NOT NULL,
    [TryCount]      SMALLINT       NOT NULL,
    [NextTryTime]   DATETIME       NOT NULL,
    [LastTryTime]   DATETIME       NULL,
    [IsAbandoned]   BIT            NOT NULL,
    [Priority]      TINYINT        NOT NULL,
    [CreationTime]  DATETIME       NOT NULL,
    [CreatorUserId] BIGINT         NULL,
    CONSTRAINT [PK_dbo.AbpBackgroundJobs] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_IsAbandoned_NextTryTime]
    ON [dbo].[AbpBackgroundJobs]([IsAbandoned] ASC, [NextTryTime] ASC);

