using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BHHC.DTO
{
    public class RankDTO : IYearlyRankable
    {
        public System.Guid RowID { get; set; }
        public Nullable<int> Year { get; set; }
        public string Insurer { get; set; }
        public Nullable<int> Rank { get; set; }
        public Nullable<decimal> Premium { get; set; }
        public Nullable<double> MarketShare { get; set; }
    }
    interface IYearlyRankable
    {
        Nullable<int> Year { get; set; }
    }
 
}
