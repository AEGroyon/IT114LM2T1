using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // UnobtrusiveValidationMode.None to disable unobtrusive validation mode
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        // Todo 4.5 When the user submits the form and all validations pass, display all the inputted texts in the "result" label
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Display the inputted texts in the "result" label
                result.Text = $"Full Name: {fullName.Text}<br />" +
                              $"Age: {age.Text}<br />" +
                              $"Email: {email.Text}<br />" +
                              $"Confirm Email: {confirmEmail.Text}";
            }
            else
            {
                result.Text = "Form is not valid";
            }
        }
    }
}