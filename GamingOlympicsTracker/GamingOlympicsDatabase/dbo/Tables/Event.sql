CREATE TABLE [dbo].[Event] (
    [EventId]                 INT            IDENTITY (1, 1) NOT NULL,
    [OlympiadId]              INT            NOT NULL,
    [EventName]               NVARCHAR (256) NOT NULL,
    [FinalEventMatchId]       INT            NULL,
    [FirstPlaceContestantId]  INT            NULL,
    [SecondPlaceContestantId] INT            NULL,
    [ThirdPlaceContestantId]  INT            NULL,
    [FourthPlaceContestantId] INT            NULL,
    CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED ([EventId] ASC),
    CONSTRAINT [FK_Event_Contesant] FOREIGN KEY ([FirstPlaceContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_Event_Contesant1] FOREIGN KEY ([SecondPlaceContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_Event_Contesant2] FOREIGN KEY ([ThirdPlaceContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_Event_Contesant3] FOREIGN KEY ([FourthPlaceContestantId]) REFERENCES [dbo].[Contesant] ([ContestantId]),
    CONSTRAINT [FK_Event_EventMatch] FOREIGN KEY ([FinalEventMatchId]) REFERENCES [dbo].[EventMatch] ([EventMatchId]),
    CONSTRAINT [FK_Event_Olympiad] FOREIGN KEY ([OlympiadId]) REFERENCES [dbo].[Olympiad] ([OlympiadId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'about fourth place', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Event', @level2type = N'COLUMN', @level2name = N'FourthPlaceContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'may not even care', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Event', @level2type = N'COLUMN', @level2name = N'ThirdPlaceContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'not perfect', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Event', @level2type = N'COLUMN', @level2name = N'SecondPlaceContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Flat, move out if needed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Event', @level2type = N'COLUMN', @level2name = N'FirstPlaceContestantId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'May have event before you decide the format.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Event', @level2type = N'COLUMN', @level2name = N'FinalEventMatchId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Starwhal or DonkeyKong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Event', @level2type = N'COLUMN', @level2name = N'EventId';

