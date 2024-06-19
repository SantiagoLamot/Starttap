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
            if (!IsPostBack)
            {
                DataTable TablaEmpleados = empleadosNegocio.MostrarEmpleados();
                gvEmpleados.DataSource = TablaEmpleados;
                gvEmpleados.DataBind();
            }
        }
    }
}