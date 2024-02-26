using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                finalGrade.Text = "Submit your grade percentage to see your final grade!";
            }
        }
        protected void CalculateGrade_Click(object sender, EventArgs e)
        {
            // Get the percentage grade entered by the user
            double percentage;
            if (double.TryParse(percentageGrade.Text, out percentage))
            {
                // Determine the final grade based on the percentage
                string grade;
                if (percentage > 96)
                {
                    grade = "1.00";
                    // Display congratulatory message if grade is 1.00
                    Response.Write($"<script>alert('Congrats, you got an uno !!!')</script>");
                }
                else if (percentage > 91.51)
                {
                    grade = "1.25";
                }
                else if (percentage > 87.01)
                {
                    grade = "1.75";
                }
                else if (percentage > 82.51)
                {
                    grade = "2.00";
                }
                else if (percentage > 78.01)
                {
                    grade = "2.25";
                }
                else if (percentage > 73.51)
                {
                    grade = "2.50";
                }
                else if (percentage > 69.01)
                {
                    grade = "2.75";
                }
                else if (percentage > 64.51)
                {
                    grade = "3.00";
                }
                else if (percentage > 60)
                {
                    grade = "3.00";
                }
                else
                {
                    grade = "5.00";
                }

                // Display the final grade
                finalGrade.Text = grade;
            }
            else
            {
                // If the input is not a valid number, display an error message
                finalGrade.Text = "Invalid input";
            }
        }
    }
}