using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BHHC.Persistence
{
    public class RankRepository
    {
        public static void Create()
        {
            var db = new BHHCDbEntities();

            var Ranking = new CompanyRank();
            Ranking.RowID = Guid.NewGuid();
            Ranking.Year = 2016;
            Ranking.Insurer = "Berkshire Hathaway";
            Ranking.Premium = 0.5M;
            Ranking.Rank = 5;
            Ranking.MarketShare = 5.64;

            db.CompanyRanks.Add(Ranking);
            db.SaveChanges();
        }
    }
}
