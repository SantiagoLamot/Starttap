using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_1
{
    public partial class WebForm4Valido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre;
            nombre = Request.QueryString["Usuario"].ToString();
            lblBienvenido.Text = "Bienvenido a mi pagina Sr/a " + nombre; 
        }
    }
}