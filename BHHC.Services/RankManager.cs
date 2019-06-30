using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BHHC.Services
{
    public class RankManager
    {
        public static object GetCompanyInfo(int Parameteryear)
        {
            return Persistences.RankRepository.GetCompanyInfo(Parameteryear);
        }

        public static object GetYearList()
        {
            return Persistences.RankRepository.GetYearList();
        }
    }
}
