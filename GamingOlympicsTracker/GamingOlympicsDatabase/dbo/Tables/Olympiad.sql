CREATE TABLE [dbo].[Olympiad] (
    [OlympiadId]   INT            IDENTITY (1, 1) NOT NULL,
    [OlympiadName] NVARCHAR (256) NOT NULL,
    [OlympiadDate] DATETIME       NULL,
    CONSTRAINT [PK_Olympiad] PRIMARY KEY CLUSTERED ([OlympiadId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'each year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Olympiad', @level2type = N'COLUMN', @level2name = N'OlympiadId';

