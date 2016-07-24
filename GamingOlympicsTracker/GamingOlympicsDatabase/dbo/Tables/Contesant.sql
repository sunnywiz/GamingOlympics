CREATE TABLE [dbo].[Contesant] (
    [ContestantId]     INT            IDENTITY (1, 1) NOT NULL,
    [OlympiadId]       INT            NOT NULL,
    [LongTermPlayerId] INT            NULL,
    [ContestantName]   NVARCHAR (256) NOT NULL,
    CONSTRAINT [PK_Contesant] PRIMARY KEY CLUSTERED ([ContestantId] ASC),
    CONSTRAINT [FK_Contesant_LongTermPlayer] FOREIGN KEY ([LongTermPlayerId]) REFERENCES [dbo].[LongTermPlayer] ([LongTermPlayerId]),
    CONSTRAINT [FK_Contesant_Olympiad] FOREIGN KEY ([OlympiadId]) REFERENCES [dbo].[Olympiad] ([OlympiadId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'"Player1" till assigned a LTP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Contesant', @level2type = N'COLUMN', @level2name = N'ContestantName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'per-year view of contestants at an olympics', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Contesant', @level2type = N'COLUMN', @level2name = N'ContestantId';

