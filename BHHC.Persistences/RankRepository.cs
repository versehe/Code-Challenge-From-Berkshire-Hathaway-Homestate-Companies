using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BHHC.Persistences
{
    public class RankRepository
    {
        public static List<DTO.RankDTO> GetCompanyInfo( int Parameteryear)
        {
            var db = new BHHCDbEntities();
            // get a list of company info by given year, order by rank
            var CompanyRank = db.CompanyRanks.Where(p => p.Year == Parameteryear).OrderBy(x => x.Rank).ToList();
            var RanksDTO = convertToDTO(CompanyRank);
            return RanksDTO;

        }

        // convert Entity Framework Object into DTO 
        private static List<DTO.RankDTO> convertToDTO(List<CompanyRank> CompanyRanks)
        {
            var RanksDTO = new List<DTO.RankDTO>();
            foreach (var CompanyRank in CompanyRanks)
            {
                var rankDTO = new DTO.RankDTO();
                rankDTO.Year = CompanyRank.Year;
                rankDTO.Insurer = CompanyRank.Insurer;
                rankDTO.Rank = CompanyRank.Rank;
                rankDTO.Premium = CompanyRank.Premium;
                rankDTO.MarketShare = CompanyRank.MarketShare;
                rankDTO.RowID = CompanyRank.RowID;

                RanksDTO.Add(rankDTO);
            }
            return RanksDTO;
        }

        // get the list of available years from dbo.CompanyRank table
        // demonstrate how to use SQL query instead of Linq to pull data from Entity Framework
        public static List<int> GetYearList()
        {
            var db = new BHHCDbEntities();
            var YearLists = db.Database.SqlQuery<int>("SELECT distinct Year FROM dbo.CompanyRank order by year desc").ToList();
            return YearLists;
        }
    }
}
