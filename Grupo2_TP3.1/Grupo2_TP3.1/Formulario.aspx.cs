using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grupo2_TP3._1
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            lblMensajeLocalidad.Text = "La localidad fue ingresada correctamente";
        }
    }
}