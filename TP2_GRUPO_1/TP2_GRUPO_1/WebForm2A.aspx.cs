using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnResumen_Click(object sender, EventArgs e)
        {

            Server.Transfer("WebForm2B.aspx");
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm1.aspx");
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm3.aspx");

        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm4.aspx");

        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm5.aspx");

        }
    }
}