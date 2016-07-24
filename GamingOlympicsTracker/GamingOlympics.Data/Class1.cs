using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingOlympics.Data
{
    public class Olympic
    {
        public int OlympicId { get; set; }
        public string OlympicName { get; set; }
        public virtual List<Race> Finals { get; set; } 
        public virtual List<Athlete> Athletes { get; set; } 
    }

    public class Athlete
    {
        public int AthleteId { get; set; }
        public string AthleteName { get; set; }
    }

    public class Race
    {
        public int RaceId { get; set; }
        public string RaceName { get; set; }  // "Dodgeball Final" 
        public bool IsSeed { get; set; }  // to get the initial athelete-to-race-input
        public bool IsAFinal { get; set; }
        public DateTime? StartTime { get; set; }
        public DateTime? EndTime { get; set; }
        public string DecidingLogic { get; set; } 

        public virtual List<Winner> Winners { get; set; }
        public virtual List<SubRace> SubRaces { get; set; } 
    }

    public class Winner
    {
        public int WinnerId { get; set; }
        public int RaceId { get; set; }
        public int Place { get; set; }
        public int AthleteId { get; set; }

        public virtual Race Race { get; set; }
        public virtual Athlete Athlete { get; set; }
    }

    public class SubRace
    {
        public int RaceId { get; set; }
        public int InputNumber { get; set; }
        public int SubRaceId { get; set; }        

        public virtual Race Race { get; set; }
        public virtual Race TheSubRace { get; set; }
    }

    public class Test
    {
        public Test()
        {
            int id = 1;
            var p1 = new Athlete() {AthleteId = id++, AthleteName = "Player1"};
            var p2 = new Athlete() { AthleteId = id++, AthleteName = "Player2" };
            var seed1 = new Race
            {
                RaceId = id++,
                IsSeed = true,
                Winners = new List<Winner>() { new Winner() {  WinnerId = id++, Place = 1, Athlete = p1 } }                
            };
            var seed2 = new Race
            {
                RaceId = id++,
                IsSeed = true,
                Winners = new List<Winner>() { new Winner() { WinnerId = id++, Place = 1, Athlete = p2 } }
            };
            var final = new Race()
            {
                RaceId = id++, 
                RaceName="Final",
            };

        }
    }
}
