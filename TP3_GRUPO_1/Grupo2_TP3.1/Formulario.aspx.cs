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
            ddlLocalidades.Items.Add(txtLocalidad.Text);
            lblMensajeLocalidad.Text = "La localidad fue ingresada correctamente";
        }

        protected void TextChanged_Localidad(object sender, EventArgs e)
        {
            if(lblMensajeLocalidad.Text!="")
            {
                lblMensajeLocalidad.Text = "";
            }
        }

        protected void sv_LocaliadRepetida(object source, ServerValidateEventArgs args)
        {
            string LocalidadIngresada = txtLocalidad.Text;
            bool validacion = true;
            foreach (string localidades in ddlLocalidades.Items)
            {
                if (localidades == LocalidadIngresada)
                {
                    validacion = false;
                }
            }
            if (validacion)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}