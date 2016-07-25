namespace GamingOlympics.Data
{
    public class Olympiad
    {

        public Olympiad(string gamingOlympics, int numPlayers) 
        {
        }

        public Event AddSingleEliminationGame(string name, bool losersBracket)
        {
            return new Event(); 
        }


        public Event AddPartialAdvanceGame(string starwahl, int playersPerGame, int numAdvance)
        {
            return new Event(); 
        }

        public Olympiad AddResource(string resourceType, string resourceName)
        {
            return this; 
        }

        public void ReplaceAndSave()
        {            
        }

        public Event AddScoreBasedGame(string fogger, int numberOfAttempts)
        {
            return new Event(); 
        }
    }
}