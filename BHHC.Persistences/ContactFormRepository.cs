using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BHHC.Persistences
{
    public class ContactFormRepository
    {
        public static void NewContactForm(DTO.ContactFormDTO ContactFormDTO)
        {
            var db = new BHHCDbEntities();
            
            var NextContactForm= convertToEF(ContactFormDTO);

            db.ContactForms.Add(NextContactForm);
            db.SaveChanges();
        }

        // convert DTO into Entity Framework Object
        private static ContactForm convertToEF(DTO.ContactFormDTO ContactFormDTO)
        {
            var ContactForm = new ContactForm();

            ContactForm.ID = ContactFormDTO.ID;
            ContactForm.ContactReason = ContactFormDTO.ContactReason;
            ContactForm.FirsrtName = ContactFormDTO.FirsrtName;
            ContactForm.LastName = ContactFormDTO.LastName;
            ContactForm.PhoneNumber = ContactFormDTO.PhoneNumber;
            ContactForm.ContactTime = ContactFormDTO.ContactTime;
            ContactForm.Email = ContactFormDTO.Email;
            ContactForm.Message = ContactFormDTO.Message;

            return ContactForm;
        }
    }
}
