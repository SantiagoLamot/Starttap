using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Cliente
{
    public partial class DetallesDeLaCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }
        }
    }
}