CREATE TABLE [dbo].[EventMatchContestants] (
    [EventMatchContestantId] INT             IDENTITY (1, 1) NOT NULL,
    [ContestantId]           INT             NULL,
    [Score]                  DECIMAL (18, 4) NULL,
    [CompleteTime]           DATETIME        NULL,
    [EventMatchid]           INT             NOT NULL,
    CONSTRAINT [PK_EventMatchContestants] PRIMARY KEY CLUSTERED ([EventMatchContestantId] ASC),
    CONSTRAINT [FK_EventMatchContestants_Contesant] FOREIGN KEY ([ContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_EventMatchContestants_EventMatch] FOREIGN KEY ([EventMatchid]) REFERENCES [dbo].[EventMatch] ([EventMatchId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Also denotes completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatchContestants', @level2type = N'COLUMN', @level2name = N'CompleteTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'What was their score.  Also denotes completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatchContestants', @level2type = N'COLUMN', @level2name = N'Score';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'When start, we don''t know who won previous round, so might be null', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatchContestants', @level2type = N'COLUMN', @level2name = N'ContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Use this to order them if you need an order.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatchContestants', @level2type = N'COLUMN', @level2name = N'EventMatchContestantId';

