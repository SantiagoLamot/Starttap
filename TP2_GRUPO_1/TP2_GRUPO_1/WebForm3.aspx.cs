using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e, Color color)
        {
            lTexto.ForeColor = color;
        }
        protected void LinkButtonRojo_Click(object sender, EventArgs e)
        {
             Page_Load(sender, e, Color.Red);
        }

        protected void LinkButtonAzul_Click(object sender, EventArgs e)
        {
            Page_Load(sender, e, Color.Blue);
        }

        protected void LinkButtonVerde_Click(object sender, EventArgs e)
        {
             Page_Load(sender, e, Color.Green);
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm1.aspx");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm2A.aspx");

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