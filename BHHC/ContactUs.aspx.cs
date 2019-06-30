using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHHC
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

            Validate();
            if (Page.IsValid)
            {
                var ContactForm = new DTO.ContactFormDTO();


                ContactForm.ContactReason = TextBoxReason.Text;
                ContactForm.FirsrtName = TextBoxFirstName.Text;
                ContactForm.LastName = TextBoxLastName.Text;
                ContactForm.PhoneNumber = TextBoxPhoneNumber.Text;
                DTO.Enums.ContactTime contactTime;
                // parse contact time from enum
                if (Enum.TryParse(CheckBoxListContactTime.SelectedValue, out contactTime))
                {
                    ContactForm.ContactTime = contactTime;
                }
                ContactForm.Email = TextBoxEmail.Text;
                ContactForm.Message = TextBoxMessage.Value;
                
                // save data to database
                Services.ContactFormManager.CreateNewContactForm(ContactForm);

                //Redirect to clear the form.
                Response.Redirect("ContactUs.aspx");
            }
                
        }

      
    }
}