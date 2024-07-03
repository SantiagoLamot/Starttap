using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Empleado
{
    public partial class ListarReservas : System.Web.UI.Page
    {
        EmpleadosNegocio empleadosNegocio = new EmpleadosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if(tbFecha.Text!="")
            {
                string fecha = tbFecha.Text;
                gvReservas.DataSource = empleadosNegocio.ReservasConfirmadas(fecha);
                gvReservas.DataBind();
            }
        }
    }
}