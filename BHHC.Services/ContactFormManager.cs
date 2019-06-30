using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BHHC.Services
{
    public class ContactFormManager
    {
        public static void CreateNewContactForm(DTO.ContactFormDTO ContactFormDTO)
        {
           
            ContactFormDTO.ID = Guid.NewGuid();

            Persistences.ContactFormRepository.NewContactForm(ContactFormDTO);
        }
    }
}
