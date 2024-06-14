using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Vistas.Administrador
{
    public partial class MostrarReportes : System.Web.UI.Page
    {

        MostrarReportesNegocio mostrarReportesNegocio = new MostrarReportesNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                DataTable dataTable =  mostrarReportesNegocio.MostrarProductos();
                gvTabla.DataSource = dataTable;
                gvTabla.DataBind();
            }

            else
            {
                DataTable dataTable = mostrarReportesNegocio.MostrarClientes();
                gvTabla.DataSource = dataTable;
                gvTabla.DataBind();
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gvTabla.DataSource =null;
            gvTabla.DataBind();
        }
    }
}