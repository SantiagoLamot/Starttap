using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtClave.TextMode = TextBoxMode.Password;
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == "Claudio" && txtClave.Text == "casas")
            {
                Response.Redirect("WebForm4Valido.aspx?Usuario=" + txtUsuario.Text);
            }
            else
            {
                Response.Redirect("WebForm4Error.aspx");
            }
        }
    }
}