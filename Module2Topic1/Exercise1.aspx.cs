using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnPlay_Click(object sender, EventArgs e)
        {
            // TODO 2.4 Set the text of lblNowPlaying to display "Now playing <favorite song>"
            lblNowPlaying.Text = "Now playing 嘘月 - Yorushika";
        }
    }
}