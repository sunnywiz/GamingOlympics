using System;
using System.Collections.Generic;

namespace GamingOlympics.Data
{
    public class Test
    {
        public Test()
        {
            var olympics = new Olympiad("2016 Gaming Olympics", numPlayers: 7)
                .AddResource("PC", "PC1")
                .AddResource("PC", "PC2")
                .AddResource("MameCabinet", "MameCabinet");
             

            olympics.AddSingleEliminationGame("Tekken", losersBracket: true)
                .RequiredResource("MameCabinet");

            olympics.AddPartialAdvanceGame("Starwahl", playersPerGame: 4, numAdvance: 2)
                .RequiredResource("PC");

            olympics.AddScoreBasedGame("Fogger", numberOfAttempts: 2)
                .RequiredResource("MameCabinet");

            olympics.ReplaceAndSave(); 
        }
    }
}
