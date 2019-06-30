using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BHHC.DTO
{
    public class ContactFormDTO
    {
        public System.Guid ID { get; set; }
        public string ContactReason { get; set; }
        public string FirsrtName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<BHHC.DTO.Enums.ContactTime> ContactTime { get; set; }
        public string Email { get; set; }
        public string Message { get; set; }
    }
}
