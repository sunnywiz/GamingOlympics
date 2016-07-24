CREATE TABLE [dbo].[EventMatch] (
    [EventMatchId]             INT      IDENTITY (1, 1) NOT NULL,
    [EventId]                  INT      NOT NULL,
    [StartTime]                DATETIME NULL,
    [CompleteTime]             DATETIME NULL,
    [WinnerContestantId]       INT      NULL,
    [RunnerUpContestantId]     INT      NULL,
    [WinnerFeedsUpToMatchId]   INT      NULL,
    [RunnerUpFeedsUpToMatchid] INT      NULL,
    CONSTRAINT [PK_EventMatch] PRIMARY KEY CLUSTERED ([EventMatchId] ASC),
    CONSTRAINT [FK_EventMatch_Contesant] FOREIGN KEY ([WinnerContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_EventMatch_Contesant1] FOREIGN KEY ([RunnerUpContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_EventMatch_EventMatch] FOREIGN KEY ([WinnerFeedsUpToMatchId]) REFERENCES [dbo].[EventMatch] ([EventMatchId]),
    CONSTRAINT [FK_EventMatch_EventMatch1] FOREIGN KEY ([RunnerUpFeedsUpToMatchid]) REFERENCES [dbo].[EventMatch] ([EventMatchId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Might matter', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatch', @level2type = N'COLUMN', @level2name = N'RunnerUpContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Who won', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatch', @level2type = N'COLUMN', @level2name = N'WinnerContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'when did it finish implying completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatch', @level2type = N'COLUMN', @level2name = N'CompleteTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'When did it start', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatch', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'8-player may have 8 matches; 4xL3, 2xL2, 1Final and 1 third/fourth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventMatch', @level2type = N'COLUMN', @level2name = N'EventMatchId';

