CREATE TABLE [dbo].[LongTermPlayer] (
    [LongTermPlayerId]   INT            IDENTITY (1, 1) NOT NULL,
    [LongTermPlayerName] NVARCHAR (256) NOT NULL,
    CONSTRAINT [PK_LongTermPlayer] PRIMARY KEY CLUSTERED ([LongTermPlayerId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'comes back year after year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LongTermPlayer', @level2type = N'COLUMN', @level2name = N'LongTermPlayerId';

