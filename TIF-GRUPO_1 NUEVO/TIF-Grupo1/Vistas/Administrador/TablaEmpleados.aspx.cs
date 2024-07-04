using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Administrador
{
    public partial class TablaEmpleados : System.Web.UI.Page
    {
        EmpleadosNegocio empleadosNegocio = new EmpleadosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }

            if (!IsPostBack)
            {
                CargarGridViewEmpleados();
            }
        }

        protected void HyperLink1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void gvEmpleados_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEmpleados.PageIndex = e.NewPageIndex;
            CargarGridViewEmpleados();
        }

        public void CargarGridViewEmpleados()
        {
            DataTable TablaEmpleados = empleadosNegocio.MostrarEmpleados();
            gvEmpleados.DataSource = TablaEmpleados;
            gvEmpleados.DataBind();
        }
    }
}