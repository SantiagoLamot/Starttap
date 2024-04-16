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
            txtLocalidad.Text = "";
        }

        protected void sv_LocaliadRepetida(object source, ServerValidateEventArgs args)
        {
            string LocalidadIngresada = txtLocalidad.Text.ToLower().Trim();
            bool validacion = true;
            foreach (ListItem localidades in ddlLocalidades.Items)
            {
                if (localidades.Text.ToLower().Trim() == LocalidadIngresada)
                {
                    validacion = false;
                }
            }
            if (validacion)
            {
                ddlLocalidades.Items.Add(txtLocalidad.Text);
                lblMensajeLocalidad.Text = "La localidad fue ingresada correctamente";
                args.IsValid = true;
            }
            else
            {
                lblMensajeLocalidad.Text = "";
                args.IsValid = false;
            }
        }



        protected void btnAspx_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblMensajeUsuario.Text = "Bienvenido/a " + txtUsuario.Text;
        }
    }
}